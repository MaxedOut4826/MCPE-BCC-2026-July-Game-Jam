# Reset server animation timer on animation state update
scoreboard players set @s[tag=property.animated.root] game.animation.timer 0

# Reset client variables on animation state update
function animations/client/helpers/store_variables

# Trigger animations on animation state update 
function animations/client/trigger_animations

# Update delta animation state 
scoreboard players operation @s delta.game.animation.state = @s game.animation.state