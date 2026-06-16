from pathlib import Path

folder = Path(".")

print("Current directory:", folder.resolve())

txt_files = list(folder.glob("*.txt"))
print(f"Found {len(txt_files)} txt files")

for txt_file in txt_files:
    print("Processing", txt_file)

    with open(txt_file, "r", encoding="utf-8") as f:
        lines = f.readlines()

    new_lines = []

    for line in lines:
        if line.startswith("\t\tcombat_width = 0"):
            new_lines.append("\t\tregimental = no\n")

        new_lines.append(line)

    with open(txt_file, "w", encoding="utf-8") as f:
        f.writelines(new_lines)

print("Done.")