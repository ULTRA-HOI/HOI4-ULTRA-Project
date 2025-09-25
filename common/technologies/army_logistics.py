# number of technologies for each logistics category
num_techologies = 50

# enter all the off-map logistics categories
# format: ["CATEGORY", scale_factor, modifier_category_idx]
logi_categories = [
    ["light", 2, 0],
    ["heavy", 5, 0],
    ["mot", 8, 0],
    ["sup", 2, 0],
    ["mot_bat", 8, 1]
]

# enter modifiers for each category
# format: ["MODIFIER", start_value, end_value, (Whether it scales based off scale factor T/F)]
logi_modifiers = [
    [ #category 0 (logistics motorisation)
        ["fuel_consumption", 0, 0.05, True],
        ["fuel_capacity", 0, 10, False],
        ["supply_consumption", 2/3, 0, False],
        ["soft_attack", 0, 0.05, False],
        ["hard_attack", 0, 0.05, False],
        ["air_attack", 0, 0.05, False],
        ["maximum_speed", 0, 0.1, False]
    ],
    [ # category 1 (battalion motorisation)
        ["soft_attack", -0.5, 0, False],
        ["hard_attack", -0.5, 0, False],
        ["air_attack", -0.5, 0, False],
        ["breakthrough", -0.5, 0, False],
        ["defense", -0.5, 0, False]
    ]
]

output_string = "technologies = {\n"
for category in logi_categories:
    for i in range(num_techologies + 1):
        output_string += f"\t{category[0]}_log_tech_{i:<2} = {{ category_{category[0]}_log = {{ "
        for modifier in logi_modifiers[category[2]]:
            value = modifier[1] + (modifier[2] - modifier[1]) * (i / num_techologies)
            value += value * (category[1] - 1) * modifier[3]
            output_string += f"{modifier[0]} = {value:.3f} "
        output_string += "} }\n"
    output_string += "\n"
output_string += "}"

with open("army_logistics.txt", "w", encoding="utf-8") as file:
    file.write(output_string)
