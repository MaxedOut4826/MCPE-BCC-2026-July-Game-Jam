# Trigger client animations on player count update
function animations/client/helpers/count_players_in_radius
execute unless score @s delta.game.animation.player_count >= @s game.animation.player_count run function animations/client/trigger_animations
execute unless score @s delta.game.animation.player_count = @s game.animation.player_count run scoreboard players operation @s delta.game.animation.player_count = @s game.animation.player_count