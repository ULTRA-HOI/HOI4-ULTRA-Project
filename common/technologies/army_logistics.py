# number of technologies for each logistics category
# = 5 * tech_granularity_mult as defined in scripted_effects/army_logisitics.txt#calc_motorisation_techs
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
# supply consumption cannot be negative, set to 1 - (1/(1 + largest supply bonus)) i.e. for -20% supply 1-(1/(1-0.2)) = 0.25
# when modifying also modify army_logistics_scripted_triggers.txt
logi_modifiers = [
    [ #category 0 (logistics motorisation)
        ["fuel_consumption", 0, 0.05, True],
        ["fuel_capacity", 0, 2.5, True],
        ["supply_consumption", 0.25, 0, False],
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

# for battalions that have an extra base multiplicative supply modifier
# format: ["UNIT/CATEGORY", "LOGI_CATEGORY", base_supply
# "UNIT/CATEGORY": unit / category name of what has extra supply, make sure its prepended with category_ if a category
# "LOGI_CATEGORY": what logistics category this unit/category belongs to. Both of these categories should be defined in the unit file
# base_supply: extra multiplicative supply modifier inherent to the category/unit. i.e. 0.2 = 20% extra supply. This cannot be negative
outlier_battalions = [
    ["category_mot_log_extra_supply", "mot", 0.15],
    ["category_sup_log_extra_supply", "sup", 0.15],
    ["assault_brigade", "mot", 1]
]

output_string = "technologies = {\n"
for category in logi_categories:
    for i in range(num_techologies + 1):
        output_string += f"\t{category[0]}_log_tech_{i:<2} = {{ category_{category[0]}_log = {{ "
        for modifier in logi_modifiers[category[2]]:
            value = modifier[1] + (modifier[2] - modifier[1]) * (i / num_techologies)
            value += value * (category[1] - 1) * modifier[3]
            output_string += f"{modifier[0]} = {value:.3f} "
        output_string += "} "
        for outlier in outlier_battalions:
            if outlier[1] == category[0]:
                output_string += f"{outlier[0]} = {{ "
                for modifier in logi_modifiers[category[2]]:
                    if modifier[0] == "supply_consumption":
                        value = modifier[1] + (modifier[2] - modifier[1]) * (i / num_techologies)
                        value = (1 + value) * (1 + outlier[2]) - 1 - value
                        output_string += f"{modifier[0]} = {value:.3f} "
                output_string += "} "
        output_string += "}\n"
    output_string += "\n"
output_string += "}"

with open("army_logistics.txt", "w", encoding="utf-8") as file:
    file.write(output_string)
