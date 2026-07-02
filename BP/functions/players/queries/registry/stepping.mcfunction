# query.is_stepping: Player is crossing over onto a new block
tag @s[tag=query.is_stepping] remove query.is_stepping

execute align xz unless entity @e[type=arrow,y=~9949,dy=100] run tag @s add query.is_stepping
execute if entity @s[tag=query.is_stepping] run summon arrow ~ ~9999 ~
scoreboard players add @s[tag=query.player.step] player.step 1
scoreboard players set @s[scores={player.step=4..}] player.step 0