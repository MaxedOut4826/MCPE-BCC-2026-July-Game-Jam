# Count players in radius
scoreboard players set @e[tag=property.animated] game.animation.player_count 0

execute positioned as @a run scoreboard players add @e[tag=property.animated,r=32] game.animation.player_count 1