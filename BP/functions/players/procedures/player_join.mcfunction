say Join event fired
function players/event_listeners/on_first_join
effect @s instant_health infinite 255 true
effect @s saturation infinite 255 true
hud @s reset crosshair
hud @s hide all
tp @s 0 1 0 0 0
scoreboard players set @s game.sfx.ambient.loop_time 0