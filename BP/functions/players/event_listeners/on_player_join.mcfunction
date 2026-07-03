execute as @a unless score @s query.joined_world matches 1 run function players/procedures/player_join
scoreboard players reset * query.joined_world
scoreboard players set @a query.joined_world 1