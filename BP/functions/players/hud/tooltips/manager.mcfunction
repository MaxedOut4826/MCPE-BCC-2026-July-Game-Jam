execute as @a if score @s game.hud.tooltip matches 1.. run function players/hud/tooltips/show

scoreboard players add @a[scores={game.hud.tooltip.timer=0..}] game.hud.tooltip.timer 1
scoreboard players reset @a[scores={game.hud.tooltip.timer=80..}] game.hud.tooltip
scoreboard players reset @a[scores={game.hud.tooltip.timer=100..}] game.hud.tooltip.timer