function players/event_listeners/registry/on_first_join
effect @s instant_health infinite 255 true
effect @s saturation infinite 255 true
function players/hud/misc/hide
tp @s 0 1 0 0 0
scoreboard players set @s game.sfx.ambient.loop_time 0