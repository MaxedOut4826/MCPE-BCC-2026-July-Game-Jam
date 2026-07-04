# Trigger client animations on timer fallback
scoreboard players add "game.animations.fallback_trigger" global.timer 1
execute if score "game.animations.fallback_trigger" global.timer matches 300.. as @e[tag=property.animated] run function animations/client/trigger_animations
execute if score "game.animations.fallback_trigger" global.timer matches 300.. run scoreboard players set "game.animations.fallback_trigger" global.timer 0