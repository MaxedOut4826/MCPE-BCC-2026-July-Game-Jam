# Assign ID
execute as @e[tag=property.indexed] unless score @s gb.id = @s gb.id run tag @s add event.assign_id
scoreboard players set @e[tag=event.assign_id] gb.id -1
scoreboard players operation @e[tag=event.assign_id] gb.id -= @e[tag=event.assign_id] gb.id
scoreboard players operation @e[tag=event.assign_id] gb.id += game.max_id gb.id
scoreboard players add @e[tag=event.assign_id] gb.id 1
scoreboard players operation "game.max_id" gb.id > @e[tag=property.indexed] gb.id

# Set ID for grouped entities
execute as @e[tag=property.group_id] positioned as @s unless score @s gb.id = @s gb.id run scoreboard players operation @s gb.id = @n[tag=property.indexed] gb.id

# Group data by ID
execute positioned as @e[tag=property.indexed] as @e[tag=property.group_id,rm=0.001] if score @s gb.id = @n[tag=property.indexed] gb.id run tp ~ ~ ~
execute as @e[tag=property.group_id] positioned as @s run scoreboard players operation @s game.animation.state = @n[tag=property.indexed] game.animation.state