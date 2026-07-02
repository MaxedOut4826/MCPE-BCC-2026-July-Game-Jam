execute as @a run function sounds/ambience/resolve_mood

# Update ambient mood
execute as @a unless score @s game.sfx.ambient.mood = @s delta.game.sfx.ambient.mood run function sounds/ambience/update_mood

# Increment loop time
scoreboard players add @a game.sfx.ambient.loop_time 1

# Reset loop time
scoreboard players set @a[scores={game.sfx.ambient.loop_time=600..}] game.sfx.ambient.loop_time 0

# Stop sounds on loop
execute as @a[scores={game.sfx.ambient.loop_time=0}] run function sounds/ambience/loop_sounds

# Update delta mood
execute as @a unless score @s game.sfx.ambient.mood = @s delta.game.sfx.ambient.mood run scoreboard players operation @s delta.game.sfx.ambient.mood = @s game.sfx.ambient.mood
