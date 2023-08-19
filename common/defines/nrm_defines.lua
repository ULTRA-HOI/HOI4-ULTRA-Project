--------------------------------------------------------------------------------------------------------------
-- Production STUFF
--------------------------------------------------------------------------------------------------------------

NDefines.NProduction.DEFAULT_MAX_NAV_FACTORIES_PER_LINE = 10
NDefines.NProduction.CAPITAL_SHIP_MAX_NAV_FACTORIES_PER_LINE = 10
NDefines.NProduction.CONVOY_MAX_NAV_FACTORIES_PER_LINE = 15
NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 1.0
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 1.0
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 1.0
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 1.0
NDefines.NProduction.BASE_NAVAL_EQUIPMENT_CONVERSION_IC_COST_FACTOR = 0.02		-- Minimum fraction of an equipment type's base industry capacity cost to use when converting a naval equipment, such as through ship refitting.
NDefines.NProduction.MIN_NAVAL_EQUIPMENT_CONVERSION_RESOURCE_COST_FACTOR = 0.2

--------------------------------------------------------------------------------------------------------------
-- TRAINING STUFF
--------------------------------------------------------------------------------------------------------------

NDefines.NNavy.TRAINING_ACCIDENT_CHANCES = 0.000 --0.02						-- Chances one ship get damage each hour while on training
NDefines.NNavy.TRAINING_ACCIDENT_STRENGTH_LOSS_FACTOR = 0.005 --0.05						-- Amount of strength loss in a training accident, propotional to the maximum strength of the ship

--------------------------------------------------------------------------------------------------------------
-- DETECTION STUFF
--------------------------------------------------------------------------------------------------------------

NDefines.NNavy.DETECTION_CHANCE_MULT_BASE = 0.05 --was 0.1								-- base multiplier value for detection chance. Later the chance is an average between our detection and enemy visibility, mult by surface/sub detection chance in the following defines.
NDefines.NNavy.DETECTION_CHANCE_MULT_RADAR_BONUS = 0.1						-- detection chance bonus from radars.
NDefines.NNavy.DETECTION_CHANCE_MULT_AIR_SUPERIORITY_BONUS = 0.25			-- bonus from air superiority.

NDefines.NNavy.CONVOY_DETECTION_CHANCE_BASE = 2.06 --was 4.12							-- regular convoy base chance detection percentage (if this fails, no detection is done on that tick)
NDefines.NNavy.UNIT_TRANSFER_DETECTION_CHANCE_BASE = 4.0 --was 8.0							-- unit transfer and naval invasion base chance detection percentage (if this fails, no detection is done on that tick)

NDefines.NNavy.SUB_DETECTION_CHANCE_BASE = 7.5									-- to start spotting a submarine, a dice is rolled and checked if it succeeds this percentage. if not, that enemy sub force won't be spotted on this tick
NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_EFFECT = 0.5				-- effect of base spotting for initial spotting of pure submarine forces. this along with next value is added together and rolled against a random to start spotting
NDefines.NNavy.SUB_DETECTION_CHANCE_SPOTTING_SPEED_EFFECT = 2.0				-- effect of spotting speed for initial spotting of pure submarine forces. this along with prev value is added together and rolled against a random to start spotting
NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_POW_EFFECT = 1.5			-- effect of spotting speed will be powered by this for initial spotting of pure submarine forces. this along with prev value is added together and rolled against a random to start spotting
NDefines.NNavy.NAVAL_COMBAT_SUB_DETECTION_FACTOR = 1      -- balance value for sub detection in combat by ships

NDefines.NNavy.DETECTION_CHANCE_MULT_RADAR_BONUS = 0.05 --was 0.1 -- detection chance bonus from radars.
NDefines.NNavy.BASE_SPOTTING_FROM_RADAR = 2.5 --was 5 -- base spotting percentage that comes from full radar coverage
NDefines.NNavy.NAVY_VISIBILITY_BONUS_ON_RETURN_FOR_REPAIR = 0.6 --was 0.9 -- Multiplier for the surface/sub visibility when the heavily damaged fleet is returning to the home base for reparation. 1.0 = no bonus. 0.0 = invisible.

--------------------------------------------------------------------------------------------------------------
-- CARRIER STUFF
--------------------------------------------------------------------------------------------------------------

NDefines.NAir.CARRIER_HOURS_DELAY_AFTER_EACH_COMBAT = 12 --8          -- how often carrier planes do battle inside naval combat - seems to not work
NDefines.NNavy.NAVAL_STRIKE_CARRIER_MULTIPLIER = 1 --5.0              -- damage bonus when planes are in naval combat where their carrier is present (and can thus sortie faster and more effectively)


NDefines.NNavy.CARRIER_ONLY_COMBAT_ACTIVATE_TIME = 0							-- hours from start of combat when carriers get to fight
NDefines.NNavy.CAPITAL_ONLY_COMBAT_ACTIVATE_TIME = 24 --4                          -- hours from start of combat when only carriers, capitals and subs get to attack
NDefines.NNavy.ALL_SHIPS_ACTIVATE_TIME = 36 --8                                    -- hours where all get to attack
--NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.33 --0.25 							-- capitals / screens ratio used for creating FEX groups in naval combat
NDefines.NNavy.CARRIER_STACK_PENALTY = 20
NDefines.NNavy.CARRIER_STACK_PENALTY_EFFECT = 0.075 --0.1

NDefines.NNavy.HIGHER_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR = 0.1 --was 0.2 -- penalty if other side has stronger carrier air force
NDefines.NNavy.MAX_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR = 0.1 --was 0.2 -- max penalty from stronger carrier air force
--------------------------------------------------------------------------------------------------------------
-- MISC NAVY STUFF
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.UNIT_TRANSFER_SPOTTING_SPEED_MULT = 1.0 -- 5.0						-- spotting speed mult against unit transfers
NDefines.NNavy.PRIDE_OF_THE_FLEET_UNASSIGN_COST = 50 --100							-- cost to unassign/replace pride of the fleet
NDefines.NNavy.SUPPLY_NEED_FACTOR = 0.1										 --was 4, multiplied in modules instead   -- multiplies supply usage  -- was 1, reduced to 0.1 to make ship supply irrelevant until such time as Paradox makes it something that actually works
NDefines.NNavy.EXPERIENCE_LOSS_FACTOR = 0.25
NDefines.NNavy.MAX_ORG_ON_MANUAL_MOVE = 1.0	--was 0.66 -- org will clamped to this ratio on manual move

--------------------------------------------------------------------------------------------------------------
-- MINES STUFF
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.NAVAL_MINES_IN_REGION_MAX = 1000 -- 1000								-- Max number of mines that can be layed by the ships. The value should be hidden from the user, as we present % so it's an abstract value that should be used for balancing.
NDefines.NNavy.NAVAL_MINES_PLANTING_SPEED_MULT = 0.01 -- 0.0001						-- Value used to overall balance of the speed of planting naval mines
NDefines.NNavy.NAVAL_MINES_SWEEPING_SPEED_MULT = 0.009 -- 0.00009						-- Value used to overall balance of the speed of sweeping naval mines
NDefines.NNavy.NAVAL_MINES_DECAY_AT_PEACE_TIME = 0.25 -- 0.25							-- How fast mines are decaying in peace time. Planting mines in peace time may be exploitable, so it's blocked atm. That's why after war we should decay them too.
NDefines.NNavy.NAVAL_MINES_SWEEPERS_REDUCTION_ON_PENALTY_EFFECT = 3.3			-- How much is the task force's sweeping attribute reducing the penalty effect.
NDefines.NNavy.NAVAL_MINES_NAVAL_SUPREMACY_FACTOR = 0.5						-- Factor for max amount of mines increasing naval supremacy
NDefines.NNavy.NAVAL_MINES_INTEL_DIFF_FACTOR = 0.2														
NDefines.NNavy.NAVAL_MINES_ACCIDENT_CRITICAL_HIT_CHANCES = 0.1
NDefines.NNavy.NAVAL_MINES_ACCIDENT_STRENGTH_LOSS = 20.0
NDefines.NNavy.NAVAL_MINES_ACCIDENT_ORG_LOSS_FACTOR = 0.8

--------------------------------------------------------------------------------------------------------------
-- COMBAT AND GUN STUFF
--------------------------------------------------------------------------------------------------------------

NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.5									-- was 0.25
NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.06 				-- heavy gun attack value is divided by this value * 100 and added to shore bombardment modifier 
NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.04                 -- light gun attack value is divided by this value * 100 and added to shore bombardment modifier
NDefines.NNavy.TRAINING_DAILY_COUNTRY_EXP_FACTOR = 0.00025						-- was 0.001 -- Factor used to scale the Daily Country Navy XP gain
NDefines.NNavy.CONVOY_SINKING_SPILLOVER = 1.0 --0.5                 				-- Damaged convoys roll for if they sink in the end of combat by accumulating the damage. This scales that chance. 
--NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.02							-- Balancing value to convert averaged equipment stats (anti_air_targetting and naval_strike_agility) to probability chances of airplane being hit by navies AA.
NDefines.NNavy.ANTI_AIR_ATTACK_TO_AMOUNT = 0.001 --was 0.01 						-- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit. Lower this value so that plane lost are less
NDefines.NNavy.AA_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING	= 0.1           -- AA penalty at 0% positioning
NDefines.NNavy.SCREENING_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.75  		-- was 0.5 -- screening efficiency (screen to capital ratio) at 0% positioning
NDefines.NNavy.NAVAL_TRANSFER_BASE_SPEED = 6                                -- was 6 -- base speed of units on water being transported
NDefines.NNavy.COMBAT_BASE_HIT_CHANCE = 0.05									-- base chance for hit
NDefines.NNavy.COMBAT_EVASION_TO_HIT_CHANCE = 0.025							-- we take ship evasion stats, and mult by this value, so it gives hit chance reduction. So if reduction is 0.025 and ship evasion = 10, then there will be 0.25 (25%) lower hit chance. (Fe. 50% base -25% from evasion +10% bcoz it's very close).
NDefines.NNavy.COMBAT_CHASE_RESIGNATION_HOURS = 10								-- Before we resign chasing enemy, give them some minimum time so the combat doesn't end instantly.
NDefines.NNavy.COMBAT_SHIP_SPEED_TO_FIELD_FACTOR = 0.02						-- Modifier to the ships speed in the combat. For better balance, make it lower to slow down the speed of approaching.
NDefines.NNavy.COMBAT_MAX_GROUPS = 2										-- Max amount of "Fire Exchange" groups (FEX).
NDefines.NNavy.NAVAL_SUPREMACY_CAN_INVADE = 0.6								-- required naval supremacy to perform invasions on an area
NDefines.NNavy.NAVAL_INVASION_SPOTTING_SPEED_MULT = 3.0

NDefines.NNavy.COMBAT_MIN_DURATION = 12                          -- Min combat duration before we can retreat. It's a balancing variable so it's not possible to always run with our weak ships agains big flotillas.
NDefines.NNavy.AGGRESSION_LIGHT_GUN_EFFICIENCY_ON_LIGHT_SHIPS = 0.5 -- ratio for scoring for different gun types against light ships
NDefines.NNavy.AGGRESSION_HEAVY_GUN_EFFICIENCY_ON_LIGHT_SHIPS = 0.25 -- ratio for scoring for different gun types against light ships
NDefines.NNavy.AGGRESSION_TORPEDO_EFFICIENCY_ON_LIGHT_SHIPS = 0.8	-- ratio for scoring for different gun types against light ships
NDefines.NNavy.AGGRESSION_LIGHT_GUN_EFFICIENCY_ON_HEAVY_SHIPS = 0.1 -- ratio for scoring for different gun types against heavy ships
NDefines.NNavy.AGGRESSION_HEAVY_GUN_EFFICIENCY_ON_HEAVY_SHIPS = 0.5 -- ratio for scoring for different gun types against heavy ships
NDefines.NNavy.AGGRESSION_TORPEDO_EFFICIENCY_ON_HEAVY_SHIPS = 1.0   -- ratio for scoring for different gun types against heavy ships

NDefines.NNavy.SUBMARINE_ESCAPE_RATIOS = { -- subs will escape battle in convoy raid if there are enemies that can attack
	1000,     -- do not engage
	15,   -- low
	4.0,   -- medium
	2.0,   -- high
	1.0,   -- I am death incarnate!
}

NDefines.NNavy.BASE_GUN_COOLDOWNS = { -- number of hours for a gun to be ready after shooting
		1.0,	-- big guns
		6.0,	-- torpedos
		1.0	-- small guns	
}
NDefines.NNavy.MISSION_SUPREMACY_RATIOS = { -- supremacy multipliers for different mission types
		0.0, -- HOLD
		1.0, -- PATROL		
		0.6, -- STRIKE FORCE 
		0.5, -- CONVOY RAIDING
		0.6, -- CONVOY ESCORT
		0.3, -- MINES PLANTING	
		0.3, -- MINES SWEEPING	
		0.0, -- TRAIN
		0.0, -- RESERVE_FLEET`
		0.6, -- NAVAL_INVASION_SUPPORT
}
NDefines.NNavy.SHIP_TO_FLEET_ANTI_AIR_RATIO	= 0.50 -- was 0.15
NDefines.NNavy.ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE = 0.25 -- was 0.2 in vanilla; Increase power and reducing multiplier to make damage scale better.
NDefines.NNavy.ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE = 0.3 -- was 0.2. PLEASE DO NOT INCREASE THE VALUE ABOVE TOO MUCH. ^0.5 instead of ^0.2 means that AA DISRUPTION SCALE A LOT MORE.
NDefines.NNavy.MIN_HIT_PROFILE_MULT = 0.05
NDefines.NNavy.HIT_PROFILE_SPEED_FACTOR = 1		-- factors speed value when determining it profile (Vis * HIT_PROFILE_MULT * Ship Hit Profile Mult)
NDefines.NNavy.HIT_PROFILE_SPEED_BASE											= 0		-- Base value added to hitprofile speed calulation

-- XP for ships and admirals

NDefines.NNavy.UNIT_EXPERIENCE_SCALE = 0.85   -- was 1.0
NDefines.NNavy.UNIT_EXPERIENCE_PER_COMBAT_HOUR = 2.5 --10 -- how many experience is gained by ship's crew per combat hour
NDefines.NNavy.EXPERIENCE_FACTOR_NON_CARRIER_GAIN = 0.05			-- was 0.04				--- Xp gain by non-carrier ships in the combat
NDefines.NNavy.EXPERIENCE_FACTOR_CARRIER_GAIN = 0.045			-- was 0.08				-- Xp gain by carrier ships in the combat
NDefines.NNavy.LEADER_EXPERIENCE_SCALE = 1.1  -- was 1.0

-- Armor, piercing and critical chances

NDefines.NNavy.COMBAT_ARMOR_PIERCING_DAMAGE_REDUCTION = -0.95 --was -0.9 -- All damage reduction % when target armor is >= then shooter armor piercing.
NDefines.NNavy.COMBAT_ARMOR_PIERCING_CRITICAL_BONUS = 2.0 --was 1.0 -- Bonus to critical chance when shooter armor piercing is higher then target armor.
NDefines.NNavy.COMBAT_BASE_CRITICAL_CHANCE = 0.025 --was 0.05 -- Base chance for receiving a critical chance. It get's scaled down with ship reliability.
NDefines.NNavy.COMBAT_CRITICAL_DAMAGE_MULT = 5.0 --was 5.0 -- Multiplier for the critical damage. Scaled down with the ship reliability.
NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT = 0.25 --was 0.1 -- the game will roll between 0-1 and will damage a random part if below this val on naval critical hits
NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT_FROM_AIR = 0.25 --was 0.1 -- the game will roll between 0-1 and will damage a random part if below this val on air critical hits
NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_CHANCE = 0.25 --was 0.1 -- chance for critical hit from torpedo.
NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_DAMAGE_MULT = 3.0 --was 2.0 -- multiplier to damage when got critical hit from torpedo. (Critical hits are devastating as usualy torpedo_attack are pretty high base values).
NDefines.NNavy.NAVY_PIERCING_THRESHOLDS = {	 -- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
			3.00, -- new
			2.00,
			1.50, -- new
			1.00,
			0.75,
			0.50,
			0.25, -- new
			0.10,
			0.00 --there isn't much point setting this higher than 0
		}
NDefines.NNavy.NAVY_PIERCING_THRESHOLD_CRITICAL_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
			3.00, -- new
			2.00,
			1.50, -- new
			1.00,
			0.75,
			0.50,
			0.25, -- new
			0.10,
			0.00 -- For criticals, you could reduce crit chance unlike damage in army combat, but we do not for now.
		}



NDefines.NNavy.MAX_SUBMARINES_PER_AUTO_TASK_FORCE = 10
NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.33
NDefines.NNavy.COMBAT_MIN_HIT_CHANCE = 0.01
NDefines.NNavy.COMBAT_EVASION_TO_HIT_CHANCE_TORPEDO_MULT = 40.0
NDefines.NNavy.COMBAT_DAMAGE_RANDOMNESS = 0.4
NDefines.NNavy.COMBAT_DAMAGE_TO_STR_FACTOR = 1.0 -- base game 0.6, used to be 1.2
NDefines.NNavy.COMBAT_DAMAGE_TO_ORG_FACTOR = 0.5 -- base game 1.0, used to be 1.8
NDefines.NNavy.COMBAT_RETREAT_DECISION_CHANCE = 0.3
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_LOW = 0.5
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_MEDIUM = 0.7
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_HIGH = 0.9
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_LOW_COMBAT = 0.4
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_MEDIUM_COMBAT = 0.6
NDefines.NNavy.REPAIR_AND_RETURN_PRIO_HIGH_COMBAT = 0.8
NDefines.NNavy.REPAIR_AND_RETURN_AMOUNT_SHIPS_LOW = 0.4
NDefines.NNavy.REPAIR_AND_RETURN_AMOUNT_SHIPS_MEDIUM = 0.6
NDefines.NNavy.REPAIR_AND_RETURN_UNIT_DYING_STR = 0.35
NDefines.NNavy.NAVY_EXPENSIVE_IC = 8000
NDefines.NNavy.MISSION_MAX_REGIONS = 10
NDefines.NNavy.FIELD_EXPERIENCE_SCALE = 0.2 --0.075
NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.5 -- was 0.1
NDefines.NNavy.BASE_CARRIER_SORTIE_EFFICIENCY = 0.50 -- was 0.25 in ultra
NDefines.NNavy.CONVOY_ATTACK_BASE_FACTOR = 0.10
NDefines.NNavy.DECRYPTION_SPOTTING_BONUS = 0.15
NDefines.NNavy.MANPOWER_LOSS_RATIO_ON_STR_LOSS = 0.4
NDefines.NNavy.ON_BASE_FUEL_COST = 0.01
NDefines.NNavy.FUEL_COST_MULT = 0.30 --0.20
NDefines.NNavy.AGGRESION_MULTIPLIER_FOR_COMBAT = 1.25
NDefines.NNavy.AGGRESSION_MAX_ARMOR_EFFICIENCY = 1.25
NDefines.NNavy.SUPREMACY_PER_SHIP_BASE = 10.0
NDefines.NNavy.SPOTTING_ENEMY_SPOTTING_MULTIPLIER_FOR_RUNNING_AWAY = 0.8
NDefines.NNavy.SPOTTING_SPEED_MULT_FOR_CATCHING_UP = 0.25

NDefines.NNavy.BASE_ESCAPE_SPEED = 0.045
NDefines.NNavy.SPEED_TO_ESCAPE_SPEED = 1.0
NDefines.NNavy.ESCAPE_SPEED_PER_COMBAT_DAY = 0.1

NDefines.NNavy.MAX_ESCAPE_SPEED_FROM_COMBAT_DURATION = 0.2

NDefines.NNavy.BASE_SPOTTING_EFFECT_FOR_INITIAL_CONVOY_SPOTTING = 0.35
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_CONVOY_SPOTTING = 0.70
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 0.70
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_NAVAL_INVASION_SPOTTING = 0.70

NDefines.NNavy.RELATIVE_SURFACE_DETECTION_TO_POSITIONING_FACTOR = 0.1
NDefines.NNavy.MAX_POSITIONING_BONUS_FROM_SURFACE_DETECTION = 0.0
NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR = 0.5 --0.25 if one side has more ships than the other, that side will get this penalty for each +100% ship ratio it has
NDefines.NNavy.MAX_POSITIONING_PENALTY_FROM_HIGHER_SHIP_RATIO = 1.0 --0.75 -- maximum penalty to get from larger fleets
NDefines.NNavy.POSITIONING_PENALTY_HOURLY_DECAY_FOR_NEWLY_JOINED_SHIPS = 0.05
NDefines.NNavy.MAX_POSITIONING_PENALTY_FOR_NEWLY_JOINED_SHIPS = 0.25 --0.25 -- the accumulated penalty from new ships will be clamped to this value
NDefines.NNavy.DAMAGE_PENALTY_ON_MINIMUM_POSITIONING = 0.5 --0.5 damage penalty at 0% positioning
NDefines.NNavy.MAX_ANTI_AIR_REDUCTION_EFFECT_ON_INCOMING_AIR_DAMAGE = 0.75 -- was 0.5 in vanilla.
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS = 3.0
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.25 --was 0.5	-- this screen ratio to num convoys is needed for full screening beyond screen line
NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CARRIERS = 0.33 --was 1
NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.025  -- this capital ratio to num convoys is needed for full screening beyond screen line
NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_SCORE = 500




NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
		55.0,	-- big guns
		145.0,	-- torpedos
		55.0,	-- small guns
	}

NDefines.NNavy.COMBAT_RESULT_PRIORITY_DAY_TO_LIVE = { 										-- the game will delete the combat results after some duration depending on its importance
		14, 
		60, 
		180,
	}

NDefines.NNavy.AIR_SPOTTER_NORMALIZED_AIRWING_SIZE = 48						-- each plane will contribute 1/this of the air-wing's detection stat
--------------------------------------------------------------------------------------------------------------
-- NAVY AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0.01
NDefines.NAI.NAVAL_DOCKYARDS_SHIP_FACTOR = 15 --1.5 --The extent to which number of dockyards play into amount of sips a nation wants
NDefines.NAI.DOCKYARDS_PER_NAVAL_DESIRE_EFFECT = 0 -- -20 --Effects how much AI wants to build dockyards based on how navally focused they are in general. Recommended range -100.0 to 100.0.
NDefines.NAI.NEEDED_NAVAL_FACTORIES_EXPENSIVE_SHIP_BONUS = 24 --12 --Amount of naval yards you need to get a bonus to building really expensive ships
NDefines.NAI.PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 2.0
NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 1.0
NDefines.NAI.REFIT_SHIP_RELUCTANCE = 1
NDefines.NAI.REFIT_SHIP_PERCENTAGE_OF_FORCES = 0.10
NDefines.NAI.MAX_CARRIER_OVERFILL = 1.50
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 6 --16
NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 4
NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 1.5
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 3.0
NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 4
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 8
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 8		
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.10 -- maximum ratio of screens forces to be used in mine sweeping
-- NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO = 0.8 -- if you have mines near your owned states, you will start priotize mine missions and will assign this ratio of screens
-- NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MIN_MINES = 10 -- lowest mine for prioing mine missions
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 250 -- highest mines for highest prio for mine missions
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.05 -- maximum ratio of screens forces to be used in mine laying
-- NDefines.NAI.MAX_SCREEN_FORCES_FOR_INVASION_SUPPORT = 0.0 -- max ratio of screens forces to be used in naval invasion missions
-- NDefines.NAI.MAX_CAPITAL_FORCES_FOR_INVASION_SUPPORT = 0.4 -- max ratio of capital forces to be used in naval invasion missions
-- NDefines.NAI.MAX_PATROL_TO_STRIKE_FORCE_RATIO = 3.0	-- maximum patrol/strike force ratio
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.1 				-- ai will use at most this ratio of affordable fuel for naval training
NDefines.NAI.MAX_DISTANCE_NALAV_INVASION = 300.0								-- AI is extremely unwilling to plan naval invasions above this naval distance limit.
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1000								-- If the enemy has a navy at least these many times stronger that the own, don't bother invading
-- NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0			-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend.
-- NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE_DEFENSIVE = 0 	-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend, but while being a defensive country.
-- NDefines.NAI.NAVAL_MAX_PRIO_THEATRES = 5										-- A nation may have a large number of theatres but all of them having stationed/assigned navy is redundant
-- NDefines.NAI.NAVAL_THEATRE_PRIO_CAPITAL_SCORE = 100							-- Weight of capital when calculating naval theatre assignment
-- NDefines.NAI.NAVAL_THEATRE_PRIO_NAVAL_BASE_SCORE = 1							-- Weight of naval bases when calculating naval theatre assignment
-- NDefines.NAI.NAVAL_THEATRE_PRIO_MIN_DISTANCE = 2000							-- Minimum distance (in km) between priority theatres for naval assignment to spread navy out
-- NDefines.NAI.NAVAL_MISSION_MIN_FLEET_SIZE = 3								-- AI will not send too small fleets on missions. Ignored if total number of ships country has is below	this.
-- NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 80										-- AI will generally attempt to merge fleets into this size but as a soft limit.
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 12								-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.MAX_INVASION_SIZE = 18
-- NDefines.NAI.NAVAL_MISSION_DISTANCE_BASE = 3500									-- Base value when AI is evaluating distance score to places
-- NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 1000									-- Base score for region with naval invasion (modified dynamically by prioritizing orders)
-- NDefines.NAI.NAVAL_MISSION_AGGRESSIVE_PATROL_DIVISOR = 1						-- Divides patrol score when not defending
-- NDefines.NAI.NAVAL_MISSION_PATROL_NEAR_OWNED = 500							-- Extra patrol mission score near owned provinces
-- NDefines.NAI.NAVAL_MISSION_PATROL_NEAR_CONTROLLED = 120						-- Extra patrol mission score near controlled provinces
NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 300									-- This higher the value the more unpredictable the invasions. Compares to actual map distance in pixels.
-- NDefines.NAI.STRIKE_FLEET_MAX_DISTANCE_TO_COMBAT = 500.0						-- The strike fleet will not attempt to intervene in combats further away than this.
NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 2					-- The more convoys a country is missing, the more resources it diverts to cover this.
NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	200, -- PATROL		
	200, -- STRIKE FORCE 
	200, -- CONVOY RAIDING
	100, -- CONVOY ESCORT
	200, -- MINES PLANTING	
	100, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	100, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	3800, -- PATROL - 100000	
	1000, -- STRIKE FORCE 
	1500, -- CONVOY RAIDING
	3000, -- CONVOY ESCORT - 1000
	-1, -- MINES PLANTING	
	300, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	1000, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	1.5, -- PATROL		
	6, -- STRIKE FORCE 
	1.5, -- CONVOY RAIDING
	2, -- CONVOY ESCORT
	2, -- MINES PLANTING
	2, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	10, -- NAVAL INVASION SUPPORT
}

--------------------------------------------------------------------------------------------------------------
-- CONVOY STUFF
--------------------------------------------------------------------------------------------------------------

NDefines.NNavy.CONVOY_EFFICIENCY_LOSS_MODIFIER = 1.0 --1.0 --1.25							-- How much efficiency drops when losing convoys. If modifier is 0.5, then losing 100% of convoys in short period, the efficiency will drop by 50%.
NDefines.NNavy.CONVOY_EFFICIENCY_REGAIN_AFTER_DAYS = 5 --7						-- Convoy starts regaining it's efficiency after X days without any convoys being sink.
NDefines.NNavy.CONVOY_EFFICIENCY_REGAIN_BASE_SPEED = 0.04 --0.04						-- How much efficiency regains every day.
NDefines.NNavy.COMBAT_DETECTED_CONVOYS_FROM_SURFACE_DETECTION_STAT = 4.0 --0.1		-- Each 1.0 of surface_detection that ship has (equipment stat), gives x% of convoys discovered from total travelling along the route.

-------------------------
-- convoy escorts
-------------------------
NDefines.NNavy.CONVOY_DEFENSE_MAX_CONVOY_TO_SHIP_RATIO = 24.0
NDefines.NNavy.CONVOY_DEFENSE_MAX_REGION_TO_TASKFORCE_RATIO	= 3.0
NDefines.NAI.REGION_THREAT_LEVEL_TO_AVOID_REGION = 25 * 100
NDefines.NAI.REGION_THREAT_LEVEL_TO_BLOCK_REGION = 25 * 1000
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 4

-- NDefines.NAI.CONVOY_ESCORT_SCORE_FROM_CONVOYS = 15 -- score for each convoy you have in area
NDefines.NAI.CONVOY_ESCORT_MUL_FROM_NO_CONVOYS = 0 -- score multiplier when no convoys are around

-- NDefines.NAI.NAVAL_MISSION_AGGRESSIVE_ESCORT_DIVISOR = 1 --2 -- Divides escort score when not defending
-- NDefines.NAI.NAVAL_MISSION_ESCORT_NEAR_OWNED = 0 --300 -- Extra escort mission score near owned provinces
-- NDefines.NAI.NAVAL_MISSION_ESCORT_NEAR_CONTROLLED = 0 --250 -- Extra escort mission score near controlled provinces

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.50 --0.20 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.90 --0.70 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN_CONVOY_THREAT = 50 -- AI will increase screen assignment for escort missions as threate increases
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 1500 -- 1500 -- AI will increase screen assignment for escort missions as threate increases

-------------------------
-- convoy raiding
-------------------------

-- NDefines.NAI.CONVOY_RAID_MIN_ENEMY_THREAT = 0.05
-- NDefines.NAI.NAVAL_MAX_CONVOY_TO_INTEL_FOR_CONVOY_RAIDS = 200            -- number of convoys in region will be clamped to this max, anything more will be ignored while assigning raids
-- NDefines.NAI.NAVAL_CONVOY_COUNT_INTEL_DROPOFF_DUE_TO_LOW_DECYPTION = 200 -- in decyrption at lowest ai will fail to notice this many convoys
-- NDefines.NAI.CONVOY_RAID_SCORE_FROM_CONVOY_INTELLIGENCE = 2.5			 -- each convoy intelligenge will incease raid score by this	

-------------------------
-- SUBS
-------------------------
NDefines.NNavy.ESCAPE_SPEED_SUB_BASE = 0.12
NDefines.NNavy.ESCAPE_SPEED_HIDDEN_SUB = 0.5


NDefines.NNavy.DEPTH_CHARGES_HIT_PROFILE = 120.0	-- hit profile for depth charges. Stealthier and faster subs should be hit less
NDefines.NNavy.DEPTH_CHARGES_HIT_CHANCE_MULT = 2 --1   -- Base hit chance is 10% for every guns. 20% for DC in late war, but early war DC should hit enough to deal constant minor damages to subs.
NDefines.NNavy.DEPTH_CHARGES_DAMAGE_MULT = 1

NDefines.NNavy.DEPTH_CHARGE_STAT_FOR_SHIP_TO_BE_SUB_HUNTER = 4
NDefines.NNavy.SUB_DETECTION_STAT_FOR_SHIP_TO_BE_SUB_HUNTER = 3

NDefines.NNavy.SUBMARINE_REVEAL_BASE_CHANCE = 11 
NDefines.NNavy.SUBMARINE_BASE_TORPEDO_REVEAL_CHANCE = 0.045

NDefines.NNavy.SUBMARINE_REVEALED_TIMEOUT = 6              --Amount of in-game-hours that makes the submarine visible if it is on the defender side.
NDefines.NNavy.SUBMARINE_HIDE_TIMEOUT = 6						-- Amount of in-game-hours that takes the submarine (with position unrevealed), to hide.

-------------------------
-- SUBS AND PLANES
-------------------------


-- those two work together in the formula f(x) = Y(x/(x+X)) where Y is MAX and X is SLOPE
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_MAX = 20.0
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_SLOPE = 10.0						-- lower means sharper curve (ramps up very fast, then flatten out very fast). Must be >0

NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_EXTERNAL_FACTOR = 1.0					-- Factor applied to the stats of external air planes
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_INTERNAL_EFFICIENCY_FACTOR = 1.0			-- Factor of Carrier's sortie efficiency on the stats bellow
NDefines.NNavy.NAVAL_COMBAT_AIR_AGILITY_TO_SUB_DETECTION = 0.0					-- Factor to apply to the agility of air planes active in a naval combat to deduce their contibution to sub detection
NDefines.NNavy.NAVAL_COMBAT_AIR_STRIKE_ATTACK_TO_SUB_DETECTION = 0.0					-- Same, but for strike attack (aka naval attack)
NDefines.NNavy.NAVAL_COMBAT_AIR_STRIKE_TARGETING_TO_SUB_DETECTION = 0.0				-- Same, but for strike targeting (aka naval targeting)
NDefines.NNavy.NAVAL_COMBAT_AIR_MAX_SPEED_TO_SUB_DETECTION = 0.0					-- Same, but for Max Speed
NDefines.NNavy.NAVAL_COMBAT_AIR_PLANE_COUNT_TO_SUB_DETECTION = 1.0					-- Factor applied to the number of active plane in a naval combat to deduce their contribution to sub detection
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_DECAY_RATE = 1.0					-- Factor to decay the value of sub detection contributed by planes on the last hour. Note: the maximum value between the decayed value and the newly computed one is taken into account. A decay rate of 1 means that nothing is carried over, the previous value is zerod out. A decay rate of 0 means that the previous value is carried over as is.
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_FACTOR = 0.0						-- A global factor that applies after all others, right before the sub detection contributed by plane is added to the global sub detection of a combatant

NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_TARGET_SCORE = 10                             -- scoring for target picking for planes inside naval combat, one define per ship typ
NDefines.NNavy.NAVAL_COMBAT_AIR_CAPITAL_TARGET_SCORE = 100
NDefines.NNavy.NAVAL_COMBAT_AIR_CONVOY_TARGET_SCORE = 1.0
NDefines.NNavy.NAVAL_COMBAT_AIR_STRENGTH_TARGET_SCORE = 0.1                        -- how much score factor from low health (scales between 0->this number)
NDefines.NNavy.NAVAL_COMBAT_AIR_LOW_AA_TARGET_SCORE = 5                           -- how much score factor from low AA guns (scales between 0->this number)

NDefines.NNavy.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO = 10
NDefines.NNavy.NAVAL_COMBAT_EXTERNAL_PLANES_JOIN_RATIO_PER_DAY = 10