# Increment double input window timer
scoreboard players add @s query.player.input.sneak.double_window 1

# Initiate the active crawl timer 
scoreboard players set @s[tag=query.start_sneaking,tag=!query.is_in_air,tag=!query.is_in_water] temp.player.crawl_time 0

# Reset double input window timer
scoreboard players reset @s[scores={query.player.input.sneak.double_window=11..}] query.player.input.sneak.double_window
