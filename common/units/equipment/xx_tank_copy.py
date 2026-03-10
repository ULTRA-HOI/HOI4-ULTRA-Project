import pandas as pd
import re

# Load CSV
df1 = pd.read_csv("tank_data.csv", header=3, decimal=",")
df2 = pd.read_csv("mech_data.csv", header=3, decimal=",")
df = pd.concat([df1, df2], ignore_index=True)

df["AP"] = df["AP"].fillna(0)
df["Hd"] = df["Hd"].str.replace("%","",regex=False).str.replace(",",".",regex=False).astype(float)/100
df["Rel"] = df["Rel"].str.replace("%","",regex=False).str.replace(",",".",regex=False).astype(float)/100

# Map tank ID to row
id_map = df.set_index("ID")  # replace "ID" with the actual CSV column name for tank IDs

def update_file(filename):

    with open(filename, "r") as f:
        lines = f.readlines()

    i = 0
    while i < len(lines):
        line = lines[i]

        if line.startswith("\t\t#tank id"):
            parts = line.strip().split()

            if len(parts) != 3 or parts[0] != "#tank" or parts[1] != "id":
                raise ValueError(f"Malformed tank id line: {line}")

            tank_id = int(parts[2])

            if tank_id not in id_map.index:
                raise ValueError(f"Tank ID {tank_id} not found in CSV")

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

    with open(filename, "w") as f:
        f.writelines(lines)

    print(f"{filename} updated.")

update_file("x_tank_chassis.txt")
update_file("mechanized.txt")