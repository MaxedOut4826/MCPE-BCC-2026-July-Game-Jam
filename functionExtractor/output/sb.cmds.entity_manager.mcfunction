tag @e[tag=property.indexed] remove event.assign_id
execute as @e[tag=property.indexed] unless score @s gb.id = @s gb.id run tag @s add event.assign_id
scoreboard players set @e[tag=event.assign_id] gb.id -1
scoreboard players operation @e[tag=event.assign_id] gb.id -= @e[tag=event.assign_id] gb.id
scoreboard players operation @e[tag=event.assign_id] gb.id += game.max_id gb.id
scoreboard players add @e[tag=event.assign_id] gb.id 1
scoreboard players operation "game.max_id" gb.id > @e[tag=property.indexed] gb.id
execute as @e[tag=property.group_id] positioned as @s unless score @s gb.id = @s gb.id run scoreboard players operation @s gb.id = @n[tag=property.indexed] gb.id
execute positioned as @e[tag=property.indexed] as @e[tag=property.group_id,rm=0.001] if score @s gb.id = @n[tag=property.indexed] gb.id run tp ~ ~ ~
execute positioned as @e[tag=property.indexed] as @e[tag=property.group_id] if score @s gb.id = @n gb.id run scoreboard players operation @s game.animation.state = @n[tag=property.indexed] game.animation.state
scoreboard players random @e[tag=obj.artefact.fragment,tag=property.randomise_item] gb.random 1 7
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=1}] slot.weapon.mainhand 0 chiseled_tuff 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=2}] slot.weapon.mainhand 0 chiseled_tuff_bricks 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=3}] slot.weapon.mainhand 0 tuff 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=4}] slot.weapon.mainhand 0 crimson_hyphae 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=4}] slot.weapon.mainhand 0 polished_tuff_stairs 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=5}] slot.weapon.mainhand 0 netherrack 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=6}] slot.weapon.mainhand 0 nether_gold_ore 1 0
replaceitem entity @e[tag=property.randomise_item,tag=obj.artefact.fragment,scores={gb.random=7}] slot.weapon.mainhand 0 quartz_ore 1 0
tag @e[tag=property.randomise_item] remove property.randomise_item
execute as @e[tag=property.movement_lock] run tp @s
effect @e[tag=property.invisibility] invisibility 1 0 true
effect @e[tag=property.instant_health] instant_health 3 255 true
tag @e[tag=event.remove_entity] remove property.instant_health
scoreboard players reset @e[tag=event.remove_entity]
effect @e[tag=event.remove_entity] clear instant_health
tp @e[tag=event.remove_entity] ~ -99999 ~
event entity @e[type=happy_ghast] minecraft:spawn_baby
event entity @e[type=happy_ghast] minecraft:become_immobile