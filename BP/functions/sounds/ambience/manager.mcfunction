function sounds/ambience/resolve_mood

# Update ambient mood
execute unless score @s game.sfx.ambient.mood = @s delta.game.sfx.ambient.mood run function sounds/ambience/update_mood

# Increment loop time
scoreboard players add @s game.sfx.ambient.loop_time 1

# Reset loop time
scoreboard players set @s[scores={game.sfx.ambient.loop_time=600..}] game.sfx.ambient.loop_time 0

# Trigger sounds on loop
execute if entity @s[scores={game.sfx.ambient.loop_time=0}] positioned as @s run function sounds/ambience/loop_sounds

# Update delta mood
execute unless score @s game.sfx.ambient.mood = @s delta.game.sfx.ambient.mood run scoreboard players operation @s delta.game.sfx.ambient.mood = @s game.sfx.ambient.mood
