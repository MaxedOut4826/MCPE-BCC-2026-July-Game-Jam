# query.start_sneaking: Player has started sneaking
tag @s[tag=query.start_sneaking] remove query.start_sneaking
execute unless entity @s[y=~1.5,dy=0] if entity @s[tag=!query.is_sneaking,y=~0.7,dy=0] run tag @s add query.start_sneaking

# query.stop_sneaking: Player has stopped sneaking
tag @s[tag=query.stop_sneaking] remove query.stop_sneaking
execute if entity @s[tag=query.is_sneaking,y=~1.5,dy=0] run tag @s add query.stop_sneaking

# query.is_sneaking: Player is sneaking
execute if entity @s[tag=query.is_sneaking,y=~1.5,dy=0] run tag @s remove query.is_sneaking
execute unless entity @s[y=~1.5,dy=0] if entity @s[y=~0.7,dy=0] run tag @s add query.is_sneaking

# say START: @s[tag=query.start_sneaking]
# say STOP: @s[tag=query.stop_sneaking]
# say IS: @s[tag=query.is_sneaking]