import pandas as pd
import re

# Load CSV
df = pd.read_csv("tank_data.csv", header=3, decimal=",")
df["AP"] = df["AP"].fillna(0)
df["Hd"] = df["Hd"].str.replace("%","",regex=False).str.replace(",",".",regex=False).astype(float)/100
df["Rel"] = df["Rel"].str.replace("%","",regex=False).str.replace(",",".",regex=False).astype(float)/100
df["Hd"] = df["Hd"].replace(0, 1.0)
df["Rel"] = df["Rel"].replace(0, 0.675)

# Map tank ID to row
id_map = df.set_index("ID")  # replace "ID" with the actual CSV column name for tank IDs

# Read file
filename = "x_tank_chassis.txt"
with open(filename, "r") as f:
    lines = f.readlines()

i = 0
while i < len(lines):
    line = lines[i]
    if line.startswith("\t\t#tank id"):
        nums = re.findall(r'\d+', line)
        if not nums:
            i += 1
            continue
        tank_id = int(nums[-1])
        if tank_id in id_map.index:
            r = id_map.loc[tank_id]

            output = [
                f"\t\tsoft_attack = {r['SA']:.3f}\n",
                f"\t\thard_attack = {r['HA']:.3f}\n",
                f"\t\tair_attack = {r['AA']:.3f}\n",
                f"\t\tap_attack = {r['AP']:.3f}\n",
                f"\t\tdefense = {r['Def']:.3f}\n",
                f"\t\tbreakthrough = {r['Brk']:.3f}\n",
                f"\t\tmax_strength = {r['HP']:.3f}\n",
                f"\t\tarmor_value = {r['Armor']}\n",
                f"\t\thardness = {r['Hd']}\n",
                f"\t\tbuild_cost_ic = {r['IC']}\n",
                f"\t\tmaximum_speed = {r['Speed']}\n",
                f"\t\treliability = {r['Rel']}\n",
                f"\t\tsupply_consumption = {r['SU']:.3f}\n",
                f"\t\tfuel_consumption = {r['FU']:.3f}\n"
            ]

            lines[i+1:i+15] = output
            i += 15
            continue
    i += 1

# Overwrite the same file
with open(filename, "w") as f:
    f.writelines(lines)

print("File updated in place!")