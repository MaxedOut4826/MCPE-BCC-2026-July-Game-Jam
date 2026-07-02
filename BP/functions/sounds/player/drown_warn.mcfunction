playsound bubble.downinside @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.1 1 0
playsound bubble.up @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.4 0.5 0
playsound mob.squid.ambient @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 1 0.9 0
playsound mob.wolf.bark @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.3 0.25 0

execute at @s anchored eyes as @e[c=2] as @e[c=2] run particle minecraft:bubble_column_up_particle ^ ^-0.1 ^0.45

# TODO move particle out to particles manager