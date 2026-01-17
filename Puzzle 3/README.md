One part of the puzzle 3 has been solved, and another is under optimization, will be soon solved. First, the directory hierarchy will be explained. Then, the design of architecture will be explained. At last, the simulation results will be diaplyed.

# Directory Structure
## Puzzle 3 Folder:
pytohn : Analysis contains python code of puzzle and conversion of txt to mem files
Vivado/part_1 : A folder containing the Vivado project used to make the design. Vivado Version: 2025.1
part_1_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_1 simulation.
Vivado/part_2 : Similar as part_1, contains the Vivado project for part_2. Vivado Version: 2025.1
part_2_only_files: Contains all verilog (including testbench) and .mem files necessary for running part_2 simulation.
Modules Hierarchy:
puzzle_1 : contains top level code and all instantiations of the puzzle (both part 1 and part 2 have same top level name)
tb_puzzle_1 : the top level testbench. Instantiates the puzzle7_part_i and gives the puzzle input. Requires a .mem file for giving inputs.

## Mem file and Input format:
One mem file with input numbers encoded in 336 bits

## Part 1 Architecture
1) The input number is converted to BCD format.
2) A priority encoder is employed to find the largest number with an FSM, which both together find the highest possible number.
3) Sum is then accumulated by converting BCD back to binary.

## Part 2 Architecture:
1) Same FSM is instantiated once but used 12 times.
2) Some error in passing from one number to another, still in debug stage.

## Results: 
### Part 1:
<img width="1581" height="1043" alt="image" src="https://github.com/user-attachments/assets/c9a5d567-a417-41c8-8ddd-5da47ba6ebb8" />
Answer: 17452
The output returns to zero after all input data, can be modified to hold the final value.
