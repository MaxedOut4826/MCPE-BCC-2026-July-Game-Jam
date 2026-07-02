execute as @a unless score @s q.joined_world matches 1 run function players/procedures/player_join
scoreboard players reset * q.joined_world
scoreboard players set @a q.joined_world 1