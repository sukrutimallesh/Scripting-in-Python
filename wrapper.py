import subprocess

print("Running Matlab code 1")

# Define the path to the Matlab executable
matlab_executable = '/Applications/MATLAB_R2023b.app/bin/matlab'

# Run a Matlab script and wait for 1 second
matlab_process = subprocess.run([matlab_executable, "-batch", "run('matlabcode1.m');pause(1);"],
                                capture_output=True)

# Read input from 'input.txt' and convert it into an array of integers
with open('input.txt', 'r') as file:
    line = file.readline()
    input_array = [int(value) for value in line.split()]

print("Running C Program")

# Compile a C program named 'CProgram.c'
subprocess.run(["gcc", "CProgram.c", "-o", "CProgram"])

# Run the compiled C program with the input array as arguments
process = subprocess.run(["./CProgram"] + [str(value) for value in input_array],
                         capture_output=True, text=True)

# Store the output of the C program in a Python variable
output_variable = process.stdout.strip()

# Write the output of the C program to 'C_output.txt'
with open('C_output.txt', 'w') as f:
    f.write(output_variable)

print("Running Haskell Program")

# Compile a Haskell program named 'HaskellProgram.hs'
subprocess.run(['ghc', 'HaskellProgram.hs'])

# Run the compiled Haskell program with the input array as arguments
process = subprocess.run(['./HaskellProgram'] + [str(x) for x in input_array],
                         text=True, capture_output=True)
result = process.stdout.strip()

# Write the output of the Haskell program to 'Haskell_output.txt'
with open('Haskell_output.txt', 'w') as f:
    f.write(result)

print("Running Prolog Program")

# Format the input array for Prolog
prolog_input = "[" + ",".join(map(str, input_array)) + "]."

# Run a Prolog program using SWI-Prolog and pass the formatted input
result = subprocess.run(['swipl', '-q', '-g', 'main', '-t', 'halt', 'PrologProgram.pl'],
                        input=prolog_input, capture_output=True, text=True)
output_result = result.stdout.strip()

# Write the output of the Prolog program to 'Prolog_output.txt'
with open('Prolog_output.txt', 'w') as f:
    f.write(output_result)

print("Running Matlab code 2")

# Run another Matlab script and wait for 3 seconds
matlab_process = subprocess.run([matlab_executable, "-batch", "run('matlabcode2.m');pause(3);"],
                                capture_output=True)

print("Completed Successfully")
