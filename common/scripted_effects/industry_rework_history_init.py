import re

def find_and_write_matching_lines(input_file, output_file, regex_pattern):
    try:
        # Open input file in read mode
        with open(input_file, 'r', encoding='utf-8') as file:
            # Read all lines from the input file
            lines = file.readlines()

        # Compile the regular expression pattern
        pattern = re.compile(regex_pattern)

        # Open output file in write mode
        with open(output_file, 'w') as output:
            # Iterate through each line
            for line in lines:
                # Check if the line matches the pattern
                if re.search(pattern, line):
                    # Write the matching line to the output file
                    output.write(line)
    
        print("Matching lines have been written to", output_file)
    except FileNotFoundError:
        print("File not found.")

input_file = r'C:\Users\Jakub\Documents\Paradox Interactive\Hearts of Iron IV\save games\test.hoi4'
output_file = "history.txt"
regex_pattern = r'^\t[A-Z]{3}\b|agricultural_penalty_calculation|factories_labour_penalty_calculation|resources_labour_penalty_calculation'

find_and_write_matching_lines(input_file, output_file, regex_pattern)