function players/event_listeners/on_player_join
execute as @a positioned as @s run function players/queries/index
function players/hud/index
execute as @a positioned as @s run function players/movements/manager
function debug/index