# query.submerge_underwater: Player's head is submerging underwater
tag @s[tag=query.submerge_underwater] remove query.submerge_underwater
execute if entity @s[tag=!query.is_underwater] if block ~ ~0.1 ~ minecraft:water run tag @s add query.submerge_underwater

# query.is_emerging_from_water: Player's head is emerging from underwater
tag @s[tag=query.emerge_from_water] remove query.emerge_from_water
execute if entity @s[tag=query.is_underwater] unless block ~ ~0.1 ~ minecraft:water run tag @s add query.emerge_from_water

# query.is_underwater: Player's head is submerged underwater
execute if entity @s[tag=query.is_underwater] unless block ~ ~0.1 ~ minecraft:water run tag @s remove query.is_underwater
execute if entity @s[tag=!query.is_underwater] if block ~ ~0.1 ~ minecraft:water run tag @s add query.is_underwater