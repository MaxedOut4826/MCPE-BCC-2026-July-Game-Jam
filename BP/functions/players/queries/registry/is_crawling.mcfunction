# query.start_crawling: Player has started crawling
tag @s[tag=query.start_crawling] remove query.start_crawling
execute unless entity @s[y=~0.7,dy=0] run tag @s[tag=!query.is_crawling] add query.start_crawling

# query.stop_crawling: Player has stopped crawling
tag @s[tag=query.stop_crawling] remove query.stop_crawling
execute if entity @s[tag=query.is_crawling,y=~0.7,dy=0] run tag @s add query.stop_crawling

# query.is_crawling: Player is crawling
execute if entity @s[tag=query.is_crawling,y=~0.7,dy=0] run tag @s remove query.is_crawling
execute unless entity @s[y=~0.7,dy=0] run tag @s add query.is_crawling