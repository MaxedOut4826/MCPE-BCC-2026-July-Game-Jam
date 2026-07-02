execute as @a[tag=query.is_stepping] positioned as @s run function sounds/player/routers/step_variants
execute positioned as @a[tag=query.submerge_underwater] run function sounds/player/enter_water
execute positioned as @a[tag=query.emerge_from_water] run function sounds/player/exit_water
execute positioned as @a[tag=query.start_sneaking] run function sounds/player/enter_sneak
execute positioned as @a[tag=query.stop_sneaking] run function sounds/player/exit_sneak
execute positioned as @a[tag=query.start_crawling] run function sounds/player/enter_crawl
execute positioned as @a[tag=query.stop_crawling] run function sounds/player/exit_crawl
execute positioned as @a[tag=query.become_airborn] run function sounds/player/jump
execute positioned as @a[tag=query.land_on_ground] run function sounds/player/routers/land_variants
execute positioned as @a[tag=query.is_underwater,scores={temp.player.drowning=190..300}] run function sounds/player/routers/drown_effects
