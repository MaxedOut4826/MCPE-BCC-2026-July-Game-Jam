# query.land_on_ground: Player has landed on the ground after being airborn
tag @a[tag=query.land_on_ground] remove query.land_on_ground
execute if entity @s[tag=query.is_in_air] unless block ~ ~-0.01 ~ minecraft:air unless block ~ ~-0.01 ~ water run tag @s add query.land_on_ground

# query.become_airborn: Player is no longer contacting the ground
tag @a[tag=query.become_airborn] remove query.become_airborn
execute if entity @s[tag=!query.is_in_air] if block ~ ~-0.01 ~ minecraft:air run tag @s add query.become_airborn

# query.is_in_air: Player is in air; is not on ground
execute unless block ~ ~-0.01 ~ minecraft:air unless block ~ ~-0.01 ~ water run tag @s remove query.is_in_air
execute if block ~ ~-0.01 ~ minecraft:air run tag @s add query.is_in_air