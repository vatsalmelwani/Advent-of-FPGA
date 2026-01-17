Both parts of the puzzle 1 have been solved. First, the directory hierarchy will be explained. Then, the design of architecture will be explained. At last, the simulation results will be diaplyed.

# Directory Structure
## Puzzle 1 Folder:
1) pytohn : Analysis contains python code of puzzle and conversion of txt to mem files
2) Vivado/part_1/puzzle_1 : A folder containing the Vivado project used to make the design. Vivado Version: 2025.1
3) part_1_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_1 simulation.
4) Vivado/part_2 : Similar as part_1, contains the Vivado project for part_2. Vivado Version: 2025.1
5) part_2_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_2 simulation.

## Modules Hierarchy:
1) puzzle_1 : contains top level code and all instantiations of the puzzle (both part 1 and part 2 have same top level name)
3) tb_puzzle_1 : the top level testbench. Instantiates the puzzle7_part_i and gives the puzzle input. Requires a .mem file for giving inputs.

## Mem file and Input format:
Two mem files are needed:
1) direc.mem contatining '0' for 'R' direction and '1' for 'L' direction input.
2) val.mem containing value of rotation in 10 bit hexadecimal format.
At each cycle, one val and one direction is given as input to the top level.

## Part 1 Architecture
1) The design takes 10 bits binary value with direction as input and first **converts to BCD**.
2) Converting to BCD gives advantage of having a " % 10 " operation at your disposal any time.
3) The algorithm used for converting to BCD is **double dabble algorithm**
4) After converting to BCD, the value is accumulated (added or subtracted based on direction) to an accumulator using customized BCD adders and subtractors designed separately.
5) A zero detector and accumulator checks if the accumulator value is 0 and increments output sum by 1 if so.

## Part 2 Architecture
1) The general idea is to keep the architecture same, but keep a signal for checking 0 transition due to crossing of 0 when value is <100 and another value % 100 accumulation to the output sum. Handled edge cases correctly.
2) Having everything in BCD further facilitates this algorithm as it allows for % 100 easily and also // 100 operation.

## Main Design IDEA:
Convert to BCD.

## Results:

### Part 1:
<img width="1562" height="975" alt="image" src="https://github.com/user-attachments/assets/f072a0ca-242b-4ac5-bbef-e4a04bb9f0c6" />
Answer: 1123

### Part 2:
<img width="1578" height="976" alt="image" src="https://github.com/user-attachments/assets/0edf0172-2726-4261-a4e1-b3ce2c67efba" />
Answer: 6695

## Refine further:
1) The current design doesn't full utilize the FPGA's resources. Perhaps if multiple inputs are allowed to be given in one cycle, FPGA's power can be properly utilized.

