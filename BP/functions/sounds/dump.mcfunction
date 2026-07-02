# drowning effects
execute as @a[scores={game.sfx.ambient.mood=1}] unless score @s t.player.drowning matches 301.. run scoreboard players add @s t.player.drowning 1
scoreboard players remove @a[scores={t.player.drowning=1..,game.sfx.ambient.mood=!1}] t.player.drowning 10
scoreboard players reset @a[scores={t.player.drowning=..0,game.sfx.ambient.mood=!1}] t.player.drowning
# wetness
execute as @a positioned as @s if block ~ ~ ~ water unless score @s t.player.wetness matches 360.. run scoreboard players add @s t.player.wetness 5
execute as @a[scores={t.player.wetness=1..}] positioned as @s unless block ~ ~ ~ water run scoreboard players remove @s t.player.wetness 1
scoreboard players reset @a[scores={t.player.wetness=..0}] t.player.wetness

execute if entity @a[scores={game.sfx.ambient.mood=2}] run scoreboard players random "sfx.additions.underwater.bubbles" game.sfx.ambient.random 1 6
execute as @a[scores={game.sfx.ambient.mood=1}] if score "sfx.additions.underwater.bubbles" game.sfx.ambient.random matches 1 positioned as @s run playsound bubble.up @s ~-1 ~1 ~2 0.1 0.3 0.1
execute as @a[scores={game.sfx.ambient.mood=1}] if score "sfx.additions.underwater.bubbles" game.sfx.ambient.random matches 2 positioned as @s run playsound bubble.down @s ~ ~ ~ 0.18 0.3 0.18
execute as @a[scores={game.sfx.ambient.mood=1}] if score "sfx.additions.underwater.bubbles" game.sfx.ambient.random matches 3 positioned as @s run playsound random.potion.brewed @s ~ ~ ~ 0.05 0.3 0.05
execute as @a[scores={game.sfx.ambient.mood=1}] if score "sfx.additions.underwater.bubbles" game.sfx.ambient.random matches 4 positioned as @s run playsound conduit.short @s ~ ~ ~ 0.5 0.6 0
execute as @a[scores={game.sfx.ambient.mood=1}] if score "sfx.additions.underwater.bubbles" game.sfx.ambient.random matches 5 positioned as @s run playsound block.eyeblossom.ambient @s ~ ~ ~ 0.6 0.48 0
scoreboard players random @a[scores={t.player.wetness=1..}] game.sfx.random 1 80
execute positioned as @a[scores={game.sfx.random=4..14,t.player.wetness=1..}] unless block ~ ~ ~ water run playsound drip.water.pointed_dripstone @a[r=8] ~-0.3 ~-0.2 ~-0.7 0.6 2.4 0
execute positioned as @a[scores={game.sfx.random=15..25,t.player.wetness=1..}] unless block ~ ~-1 ~ air unless block ~ ~ ~ water run playsound drip.water.pointed_dripstone @a[r=8] ~-0.6 ~ ~0.3 0.4 2.7 0
execute positioned as @a[scores={game.sfx.random=26..36,t.player.wetness=1..}] unless block ~ ~-1 ~ air unless block ~ ~ ~ water run playsound drip.water.pointed_dripstone @a[r=8] ~0.6 ~ ~0.5 0.6 2 0
execute positioned as @a[scores={game.sfx.random=4..36,t.player.wetness=1..}] unless block ~ ~-0.01 ~ air unless block ~ ~ ~ water run particle minecraft:water_splash_particle_manual ~ ~ ~
execute if entity @a[scores={game.sfx.ambient.mood=2}] run scoreboard players random "sound.additions.outdoors.leaf_fall" game.sfx.ambient.random 1 80
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.leaf_fall" game.sfx.ambient.random matches 1 positioned as @s run playsound fall.big_dripleaf @s ~3 ~ ~3 0.1 1.25 0.1
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.leaf_fall" game.sfx.ambient.random matches 2 positioned as @s run playsound jump.big_dripleaf @s ~-3 ~ ~-3 0.1 1.5 0.1
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.leaf_fall" game.sfx.ambient.random matches 3 positioned as @s run playsound step.big_dripleaf @s ~-6 ~ ~2 0.1 1.9 0.1
execute if entity @a[scores={game.sfx.ambient.mood=2}] run scoreboard players random "sfx.additions.outdoors.tree_creak" game.sfx.ambient.random 1 5
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.tree_creak" game.sfx.ambient.random matches 1 positioned as @s run playsound block.chorusflower.grow @s ~ ~ ~ 0.3 0.3 0.3
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.tree_creak" game.sfx.ambient.random matches 2 positioned as @s run playsound crossbow.loading.start @s ~3 ~ ~ 0.125 0.2 0.125
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.tree_creak" game.sfx.ambient.random matches 3 positioned as @s run playsound block.pale_hanging_moss.ambient @a ~3 ~3 ~3 0.4 0.68 0
execute if entity @a[scores={game.sfx.ambient.mood=2}] run scoreboard players random "sfx.additions.outdoors.generic" game.sfx.ambient.random 1 5
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.generic" game.sfx.ambient.random matches 1 positioned as @s run playsound ambient.weather.thunder @s ~6 ~6 ~6 0.1 0.058 0.1
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.generic" game.sfx.ambient.random matches 2 positioned as @s run playsound item.trident.riptide_2 @s ~ ~ ~ 0.048 0.2233 0.048
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.generic" game.sfx.ambient.random matches 3 positioned as @s run playsound block.dry_grass.ambient.attached @s ~ ~ ~ 1 0.8 0
execute as @a[scores={game.sfx.ambient.mood=2}] if score "sfx.additions.outdoors.generic" game.sfx.ambient.random matches 4 positioned as @s run playsound block.deadbush.ambient @s ~ ~ ~ 0.88 0.6 0.85
execute positioned as @a positioned as @n[tag=obj.class.floating_debris,r=8.5] run playsound beacon.ambient @a[r=8.5] ~ ~ ~ 0.112 0.4 0
execute positioned as @a positioned as @n[tag=obj.class.floating_debris,r=8.5] run playsound block.dried_ghast.state_change @a[r=8] ~ ~ ~ 0.2505 0.18 0
execute positioned as @a positioned as @n[tag=obj.class.floating_debris,r=8.5] run playsound note.flute @a[r=8] ~ ~ ~ 0.0335512 0.1 0

