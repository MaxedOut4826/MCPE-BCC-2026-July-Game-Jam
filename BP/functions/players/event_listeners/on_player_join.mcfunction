execute as @a unless score @s query.player.joined_world matches 1 run function players/procedures/player_join
scoreboard players reset * query.player.joined_world
scoreboard players set @a query.player.joined_world 1