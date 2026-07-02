# query.exit_water: Player's feet have exited the water 
tag @s[tag=query.exit_water] remove query.exit_water
execute if entity @s[tag=query.is_in_water] unless block ~ ~ ~ minecraft:water run tag @s add query.exit_water

# query.enter_water: Player's feet have entered the water
tag @s[tag=query.enter_water] remove query.enter_water
execute if entity @s[tag=!query.is_in_water] if block ~ ~ ~ minecraft:water run tag @s add query.enter_water

# query.is_in_water: Player's feet are in water
execute if entity @s[tag=query.is_in_water] unless block ~ ~ ~ minecraft:water run tag @s remove query.is_in_water
execute if entity @s[tag=!query.is_in_water] if block ~ ~ ~ minecraft:water run tag @s add query.is_in_water