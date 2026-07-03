# Start double input timer
scoreboard players add @s[tag=query.stop_sneaking,tag=!query.is_underwater] query.player.input.sneak.double_window 0

# Check double input trigger to begin crawling
execute if entity @s[scores={query.player.input.sneak.double_window=0..}] run function players/movements/crawl/trigger

# Tick crawling procedure while active
execute if entity @s[scores={temp.player.crawl_time=0..}] run function players/movements/crawl/active