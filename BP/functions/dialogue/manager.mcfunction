# Increment dialogue pointer
scoreboard players add @s game.dialogue.pointer 1

# Calculate pointer positions
scoreboard players operation @s game.dialogue.pointer.x = @s game.dialogue.pointer
scoreboard players operation @s game.dialogue.pointer.y = @s game.dialogue.pointer
scoreboard players operation @s game.dialogue.pointer.x %= "MATH.9" global.constant
scoreboard players operation @s game.dialogue.pointer.y /= "MATH.9" global.constant
scoreboard players operation @s game.dialogue.pointer.z = @s game.dialogue.pointer.y
scoreboard players operation @s game.dialogue.pointer.y %= "MATH.9" global.constant
scoreboard players operation @s game.dialogue.pointer.z /= "MATH.9" global.constant

# Add 1 to all pointers to offset the array & start from 1
scoreboard players add @s game.dialogue.pointer.z 1
scoreboard players add @s game.dialogue.pointer.y 1
scoreboard players add @s game.dialogue.pointer.x 1

# Call voice controller to play sound
execute positioned as @s run function dialogue/voices/controller