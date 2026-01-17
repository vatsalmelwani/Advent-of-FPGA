# BOTH PARTS OF THIS PUZZLE HAVE BEN SOLVED USING HARDCAML

# Directory Structure
## Puzzle 7 Folder:
1) Hardcaml/part_1 : This folder contains the Hardcaml code for part 1 of the puzzle.
2) Hardcaml/part_2 :  This folder contains the Hardcaml code for part 1 of the puzzle
3) python: Contains python file for analysis, debugging and conversion to mem files.
4) part_1 : contains the Vivado project for part 1 for simulating the generated verilog from Hardcaml.
5) part_2 : contains the Vivado project for part 2 for simulating the generated verilog from Hardcaml.
6) part_1_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_1 simulation.
7) part_2_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_2 simulation.

## Modules Hierarchy:
1) top : contains top level code and all instantiations (same for both parts)
2) tb_top : the top level testbench. Instantiates the top and gives the puzzle input. Requires a .mem file for giving inputs.

## Mem file and Input format:
1) The project assumes first row will always contain only sources of light and they will only be in the first row.
2) 'S' converted to '1'.
3) '^' converted to '1' (different from 'S' due to non existence in first row assumed).
4) '.' converted to 0.
5) Pad at the end each line with zeros in the mem file to reach the nearest multiple of 32 before giving input to the top (here 160 elements in each line).

## Part 1 Architecture
1) Takes 32 bits as input at a time.
2) Maintains a memory of size = number of elements in a row (160 here).
3) As the input comes, the corresponding old data chunk from the memory is read and using basic combinational logic, the new ray positions are determined.
4) A '1' in the stored data tells the ray is present and '0' tells the ray is absent at that position.
5) To count the splits, count ones is used on input_data && old_data_chunk, hich is ten added to an accumulating sum to tell the final output.
6) Extra few bits of storage to handle the edge cases when there's a split at the last or first bit of the chunk.

## Part 2 Architecture
1) Same input and storage format as part 1.
2) Basic idea is to maintain a count for each position in the row which tells how many ways can a ray reach that position.
3) To get the next iteration count, just look at the adjacent position's split. Let's say the ray count of an index is x and a splitter comes beneath it. In the next iteration, it's left and right positions will have an additional x rays each and that position will have zero ray count in the next iteration.
4) To store this count data, BRAM was used (RAM instance in Hardcaml with one read port and one write port).
5) Extra storage was required for computing the edge cases properly.
6) After all inputs have been give, a signal flags starting of final computation.
7) In this stage, data is read from BRAM one by one, broken appropriately to give position counts and then accumulated till whole of the BRAM is read once.
8) The accumulated sum is teh final output.

## Some challenges encountered:
1) Learning Hardcaml. The Jane Street Website content is awesome, but some more research is required to completely get familiarized with Hardcaml.
2) Memory design: Since the counts of a chunk are 64 bit (kept enough for scalability) * 32 = 2048 bits, each row is intended to be splitted and stored in multiple BRAMs parallely, making a large-row-size BRAM in essence.

## Results:

### Part 1:
<img width="1522" height="974" alt="image" src="https://github.com/user-attachments/assets/0deff9ef-25af-4763-99b4-28ff7f6e95b2" />
Answer: 1543

### Part 2:
<img width="1515" height="961" alt="image" src="https://github.com/user-attachments/assets/bf409db5-87c1-45df-9e87-c9f9f0e2224f" />
Answer: 3223365367809

## Future Fixes:
1) There can be potential optimization in the memory requirements.
2) Using better Hardcaml funcitons to write even lesser code.
