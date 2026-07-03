# Place barrier at player head to force crawling
setblock ~ ~1.5 ~ barrier keep

# Expire crawling if the player goes underwater
execute if entity @s[tag=query.is_underwater] run function players/movements/crawl/cancel

# Expire crawling if the player jumps
execute if entity @s[tag=query.become_airborn] run function players/movements/crawl/cancel

# Expire crawling at the end of the active crawl timer
execute if entity @s[scores={temp.player.crawl_time=600..}] run function players/movements/crawl/cancel

# Increment active crawl timer
scoreboard players add @s temp.player.crawl_time 1