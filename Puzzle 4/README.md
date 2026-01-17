Both parts of the puzzle 4 have been solved. First, the directory hierarchy will be explained. Then, the design of architecture will be explained. At last, the simulation results will be diaplyed.

# Directory Structure
## Puzzle 4 Folder:
1) pytohn/part1 : This folder has python implementation of part 1 and part 2 both.
2) part_1 : A folder containing the Vivado project used to make the design. Vivado Version: 2025.1
3) part_1_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_1 simulation.
4) part_2 : Similar as part_1, contains the Vivado project for part_2. Vivado Version: 2025.1
5) part_2_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_2 simulation.

## Modules Hierarchy:
1) puzzle7_part_i : contains top level code and all instantiations for part i of the puzzle where i is {0,1}
2) tb_top : the top level testbench. Instantiates the puzzle7_part_i and gives the puzzle input. Requires a .mem file for giving inputs.

## Mem file and Input format:
Each '@' has been converted to a '1' and each '.' has been converted to a '0'. Done in python file. A padding is also applied at the end of each line to make each line have lowest multiple of 32 charancters. For example if there are 139 chareacters in a row, nearest multiple of 32 is 160, hence 21 zeros will be added at the end. This is doen to make it compatible with the architecture explain later.

## Part 1 Architecture
1) In software, the code would have visited each element of the 2D matrix once. But on FPGA, leveraging the parallel capability, 32 elements are being computed at once.
2) The input to the top level is 32 bits.
3) The computation of neighbours cannot start till atleast first chunk of 2nd row has arrived.
4) Hence the storage is of Number of chunks in a row * 5 * 2. Only these many chunks are necessary to be stored at max.
5) As a new chunk arrives, the chunk which is upper to the one whose computation has currently being done is evicted in the next cycle as it is no longer needed.
6) For computation, upper chunk, lower chunk, left bit of current chunk, right bit of current chunk, upper/lower left/right bit of current chunk are required.
7) All these are available at the time of computation, except the lower right bit, as that chunk comes in the next cycle.
8) Hence, other than the last bit of chunk, computation is completely done and the last bit's result is corrected in the next cycle using 1 bits storage for the previous bit and the count of 1's it had in it's 7 available neighbours.
9) The sum is finally accumulated in a 16 bit output, and is the top level output.

Following is a brief paper design of the architecture:


## Part 2 Architecture
This is a real **devil problem** and a challenge in a true sense.
For better readability, let's call 1's with less than four 1 neighbours as a '_bomb_'.
First let's talk about software:
1) The marked '1's now have to be removed: let's call this erosion.
2) New 1's have to be found with now less than four 1 neighbours.
3) Intutive but very bad complexity: keep eroding element by element until you converge. This has no sense of information from the previous erosion being carried out to next erosion. Hence, bad time complexity, not linear with number of elemments.
4) A better way to do it in software is to do the following:
  a) Initialize a queue, with the intention of holding (x,y) indices.
  b) Maintain another 2D matrix which stores the counts of all 1 neighbours for each element.
  c) Scan the matrix completely initially and add all indices which are _bombs_ to the queue.
  d) Now, until the queue is empty:
    i) pop an element, mark it's value in origianl matrix as 0.
   ii) from the neighbours' count matrix, subtract one from all of the neighbours if their value in input grid is 1.
   iii) Check if any of the neighbours crosses the boundary of 4, and thus becomes a _bomb_. For all such neighbours, add their indices in the queue.
   iv) keep accumulating the number of 1's popped from the queue.
5) As can be seen, this now becomes a linear time complexity wrt number of elements in the grid as each element will be added at most once.

Now, comes the hardware part:
Based on the idea above, there are two main architectural designs that come to mind:
1) Storing the indices of chunks as and when they are affected and any of it's elements becomes a _bomb_.
2) Storing the count of all 1's in a queue, with it's (x,y) index.

The "design 1" as we will see is much more memory storage friendly, BRAM compatible and enables parallel processing also.
The "design 2" can act faster as in a cycle, 32 _bombs_ will always be processed, but the architecture is not at al memory friendly. Each computation would require to scan the whole storage element to find the indices which are affected by the current index as you don't know where that index is kept. Plus, even if we implement it as a BRAM, it would require too many accesses to be completed before next computation which will eventually make the design slower.

Hence, after much thought, paper analysis of storage required, analyzing converging properties of the design, and assessing the parralel capability offered, I moved with "design 1".
It will become much more clear why it is better in the next section when the exact architecture is explained.

### Final Architecture:
1) Like in part 1, the starting remains almost the same. You get the data chunk by chunk from the testbench (32 bits).
2) Then, the computation starts as soon as first chunk of second row comes. Now, let's call 'result_vector' to be a 32 bit signal which is 1 when there's a _bomb_ in the current chunk under computation and 0 if not.
3) Using result_vector, 2 things are generated:
   a) neighbouring chunks' 'affected' signals: if the removal of one from the current chunk affected it's neighbour rows.
   b) the new updated chunk with removed _bombs_.
4) Now, the updated chunks are stored in a BRAM of row size 34 (why? later.)
5) In some next iterations, when this chunk will again be needed for computation of some other chunk since it is also someone's neighbour, it will be accessed from the BRAM. So the later chunk under computation already gets the updated previous chunks. This is the first step in improving performance.
6) Now, let's come to the 'affected' signals. There are a total of 9 of them:
   upper_left_chunk, upper_chunk, upper_right_chunk, middle_left_chunk, middle_chunk (or current chunk), middle_right_chunk, lower_left_chunk, lower_chunk, lower_right_chunk.
   Note: while first layer computation, we only care about the first 5 of the above signals, as the later chunks already get updated previous chunks.
7) Now comes the main part: for each affected signal, store their chunk index in a FIFO (circular FIFO). FOr doing that in one cycle, one would need atleast a 5-writeable FIFO. The design of this will be discussed later as it is implemented using BRAMs.
8) Complete the first layer fully till you reach last chunk. Then, start computation from the FIFO.
9) Until FIFO is empty, follow the following FSM:
    a) Read chunk index from FIFO.
    b) From the grid BRAM, read the upper_upper_chunk, upper_chunk, lower_chunk, lower_lower_chunk.
   (Npw comes the significance of why the chunks stored in the BRAM were 34 bits. It is basically one element to the left of the chunk and one to the right. It helps immensly in finding the diagonal and horiaontal row affected signals as those can be affected from only 31 and 0 positions in the current chunk. This means you don't have to pop whole 6 more chunks just for 1 bit. These are all boundary conditions which will be talked later too.)
    c) Now, calculate neighbour counts for upper chunk, lower chunk and middle chunk. See if any of the three is affected. the affected  goes high when previously, an element had >= 4 nighbouring 1s and after bomb removal from middle chunk, it now has <4 neighbouring 1's.
    d) for the affected signals of diagonals and left and right chunks, the condition is a little realxed since these cases are rare and to check if they are really affected, you would need several more reads from BRAM, decreasing the performance. The conditions are:
       upper_left_aff = result_vector[31] && upper_chunk[33]; (Note the real chunk's data is from 32 to 1 index, rest two are the neighbouring chunks' bits.)
       upper_right_aff = result_vector[0] && upper_chunk[0];
       middle_left_aff = result_vector[31] && middle_chunk[33];
       ..... and the pattern continues.
    e) Note, that everything is being done in chunks of 32 bits, ensuring the parallel processing to have a significant role in minimizig the number of cycles required to converge.
    f) Now, simultaneously update the middle chunk in BRAM again, accumulate the removed _bomb_s' count, and write the affected indexes in the FIFO back.
    g) To ensure an index is not copied in the FIFO, a reg of [number of chunks] lenmgth in maintained as a flag to tell if the index is in FIFO already. If so, the pushing of index to FIFO is skipped as it will anyways be enountered sometime in future.
11) Now, just wait for FIFO to get empty. This will give you the final outupt sum, that is the number of _bombs_.

### Visual Reference of the Architecture:

## Some of the many challenges encountered:
1) Managing edge cases: bits at the end of a chunk are almost always to be handled differently. There were many many debug cycles and algorithm changes just becuase of the edge cases present. One very good solution I though of was of storing 34 bits instead of 32 that helped in improving the performance while handling edge cases simultaously.
2) Memory design: The obvious choice here was to use a BRAM for every big (few KBs) of memory in this design as the design must be scalable.
   a) The grid data was stored in the BRAM.
   b) The FIFO required 8 simultaeopus writes. Which was handled by instantiating 8 BRAMs in parallel and some extra logic to handle where to write and from which BRAM to read. The FIFO was also made circular, which allowwed for a fixed size of it to be number of chunks as there cannot be more elements in it than number of chunks due to a flag reg (as talked earlier). This according to me was a great design choice.
3) This part of the challenge took many hours of time since it was an iterative process to reach the current solution. THere were many niche design choices which all can't be talked about here as they would require the knowledge of the specific edge cases and other scenarios.

# Simulation Results:
## Part 1:
<img width="1531" height="1024" alt="image" src="https://github.com/user-attachments/assets/d01ffb1f-63d6-49e7-9321-0f5890a736f0" />
Answer: 1516

## Part 2:
<img width="1512" height="952" alt="image" src="https://github.com/user-attachments/assets/7101e2da-641c-418f-986b-b8eab990b4bb" />
Answer: 9122 (as highlighted)
The done_all signal tells the computation is finally over.

# Future Fixes:
1) There's one more way to improve performance in the BRAM access while in the FIFO stage by accessing prviously read chunks.
2) Checking compatibility for smaller designs. Although the architecture is full parameterized, smaller designs having only one chunk can fase problems due to defined delay signals.
3) The count_ones is currently only 32 bits compatible as it was generated using Hardcaml. After parametrizing it, all chunk sizes wiuld become compatible as the files are already parametrized.

NOTE: One module (count_ones) was made using Hardcaml, rest all were coded in Verilog only. This is because I was still in the process of learning Hardcaml.
