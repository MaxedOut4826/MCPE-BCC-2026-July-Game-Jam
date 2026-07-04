# Increment server animation timer
scoreboard players add @s game.animation.timer 1

execute unless score @s delta.game.animation.state = @s game.animation.state run function animations/server/on_state_change

function animations/server/routers/animations