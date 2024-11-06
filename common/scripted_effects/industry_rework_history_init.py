import re
import os

# Function to parse the log file and extract relevant lines
def parse_log_file(log_file):
    manpower_lines = {}
    tag_pattern = r'#Init manpower variables (\w{3}) (-?\d\.\d{3}) (-?\d\.\d{3}) (-?\d\.\d{3})'
    
    with open(log_file, 'r') as file:
        lines = file.readlines()
        for line in lines:
            match = re.search(tag_pattern, line)
            if match:
                tag, value1, value2, value3 = match.groups()
                manpower_lines[tag] = (value1, value2, value3)
    
    return manpower_lines

# Function to insert extracted lines into the target files within a folder
def insert_into_files(target_folder, manpower_lines):
    for filename in os.listdir(target_folder):
        if filename.endswith(".txt"):
            tag = filename[:3]  # Extract the 3-letter tag from the filename
            if tag in manpower_lines:
                file_path = os.path.join(target_folder, filename)
                insert_into_file(file_path, tag, manpower_lines[tag])

def insert_into_file(file_path, tag, values):
    output_lines = []
    insertion_done = False
    skiplines = 0
    
    with open(file_path, 'r') as file:
        lines = file.readlines()
        for line in lines:
            if insertion_done and skiplines < 3:
                skiplines = skiplines + 1
            else:
                output_lines.append(line)
            if not insertion_done and "init_industry_rework = yes" in line:
                insertion_done = True
                value1, value2, value3 = values
                #[?THIS.agricultural_penalty_calculation|3] [?THIS.factories_labour_penalty_calculation|3] [?THIS.resources_labour_penalty_calculation|3]"
                output_lines.append(f"set_variable = {{ agricultural_penalty_calculation = {value1} }}\n")
                output_lines.append(f"set_variable = {{ factories_labour_penalty_calculation = {value2} }}\n")
                output_lines.append(f"set_variable = {{ resources_labour_penalty_calculation = {value3} }}\n")
    
    # Write the updated content back to the file
    with open(file_path, 'w') as file:
        file.writelines(output_lines)

# Example usage
log_file = r'C:\Users\Jakub\Documents\Paradox Interactive\Hearts of Iron IV\logs\game.log'
target_folder = 'history/countries'

manpower_lines = parse_log_file(log_file)
insert_into_files(target_folder, manpower_lines)

print("Manpower variables inserted successfully into all relevant files!")

