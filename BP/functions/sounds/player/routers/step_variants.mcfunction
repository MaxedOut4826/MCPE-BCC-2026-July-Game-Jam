# Wet steps
execute if entity @s[tag=!query.is_underwater,scores={player.step=1..3,player.step=!2,temp.player.wetness=1..}] run function sounds/player/step/wet

# Wade through water
execute if entity @s[tag=query.is_in_water,scores={player.step=2}] run function sounds/player/step/water

# Swim underwater
execute if entity @s[tag=query.is_underwater,scores={player.step=2}] run function sounds/player/step/swim

# Step through foliage
function sounds/player/step/foliage

# Crawl steps
execute if entity @s[tag=query.is_crawling,scores={player.step=1..3,player.step=!2}] run function sounds/player/routers/crawl_variants