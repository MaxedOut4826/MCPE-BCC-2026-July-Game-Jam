scoreboard players set @a game.sfx.ambient.mood 0
scoreboard players set @a[x=-200,y=-64,z=-200,dx=400,dy=384,dz=400] game.sfx.ambient.mood 2
scoreboard players set @a[x=2924,y=0,z=2969,dx=84,dy=320,dz=70] game.sfx.ambient.mood 3
scoreboard players set @a[x=2799,y=0,z=2923,dx=101,dy=320,dz=108] game.sfx.ambient.mood 4
execute as @a positioned as @s anchored eyes if block ~ ~0.1 ~ water run scoreboard players set @s game.sfx.ambient.mood 1
execute as @a unless score @s game.sfx.ambient.mood = @s delta.game.sfx.ambient.mood run scoreboard players set @s game.sfx.ambient.loop_time -1
stopsound @a[scores={game.sfx.ambient.loop_time=-1}] ambient.soulsand_valley.loop
stopsound @a[scores={game.sfx.ambient.loop_time=-1}] ambient.underwater.loop
stopsound @a[scores={game.sfx.ambient.loop_time=-1}] ambient.basalt_deltas.loop
stopsound @a[scores={game.sfx.ambient.loop_time=-1}] ambient.crimson_forest.loop
stopsound @a[scores={game.sfx.ambient.loop_time=-1}] ambient.warped_forest.loop
scoreboard players add @a game.sfx.ambient.loop_time 1
scoreboard players set @a[scores={game.sfx.ambient.loop_time=600..}] game.sfx.ambient.loop_time 0
stopsound @a[scores={game.sfx.ambient.loop_time=0}] elytra.loop
stopsound @a[scores={delta.game.sfx.ambient.mood=1,game.sfx.ambient.loop_time=0}] liquid.water
execute as @a[scores={game.sfx.ambient.mood=1,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.warped_forest.loop @s ~ ~ ~ 0.825 0.4 1
execute as @a[scores={game.sfx.ambient.mood=1,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.underwater.loop @s ~ ~ ~ 0.6 0.8 0.6
execute as @a[scores={game.sfx.ambient.mood=1,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.basalt_deltas.loop @s ~ ~ ~ 0.078 0.2 0.0
execute as @a[scores={game.sfx.ambient.mood=1,game.sfx.ambient.loop_time=0}] positioned as @s run playsound elytra.loop @s ~ ~ ~ 0.125 0.2 0.125
execute as @a[scores={game.sfx.ambient.mood=1,game.sfx.ambient.loop_time=0}] positioned as @s run playsound liquid.water @s ~ ~ ~ 1 0.08 1
execute as @a[scores={game.sfx.ambient.mood=2,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.soulsand_valley.loop @s ~ ~ ~ 0.2 1 0.2
execute as @a[scores={game.sfx.ambient.mood=2,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.weather.rain @s ~ ~ ~ 0.6 0.3 0.6
execute as @a[scores={game.sfx.ambient.mood=3,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.warped_forest.loop @s ~ ~ ~ 0.48 0.4 0
execute as @a[scores={game.sfx.ambient.mood=4,game.sfx.ambient.loop_time=0}] positioned as @s run playsound ambient.crimson_forest.loop @s ~ ~ ~ 0.19 0.6 0
execute positioned as @a[scores={delta.game.sfx.ambient.mood=!1,game.sfx.ambient.mood=1}] run playsound bucket.empty_water @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.55 0.23 0
execute positioned as @a[scores={delta.game.sfx.ambient.mood=!1,game.sfx.ambient.mood=1}] run playsound entity.generic.splash @a[r=8] ~ ~ ~ 1 0.5 0
execute positioned as @a[scores={delta.game.sfx.ambient.mood=!1,game.sfx.ambient.mood=1}] run playsound bubble.down @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.3 0.6 0
execute positioned as @a[scores={delta.game.sfx.ambient.mood=!1,game.sfx.ambient.mood=1}] run playsound liquid.water @a[r=8] ~ ~ ~ 1 1.5 0
execute positioned as @a[scores={delta.game.sfx.ambient.mood=!1,game.sfx.ambient.mood=1}] run playsound mob.horse.breathe @a[r=8] ~ ~ ~ 1 0.7 0
execute positioned as @a[scores={delta.game.sfx.ambient.mood=!1,game.sfx.ambient.mood=1}] run playsound mob.wolf.panting @a[r=8] ~ ~ ~ 1 0.5 0
execute as @a unless score @s game.sfx.ambient.mood = @s delta.game.sfx.ambient.mood run scoreboard players operation @s delta.game.sfx.ambient.mood = @s game.sfx.ambient.mood
execute as @a[scores={game.sfx.ambient.mood=1}] unless score @s t.player.drowning matches 301.. run scoreboard players add @s t.player.drowning 1
scoreboard players remove @a[scores={t.player.drowning=1..,game.sfx.ambient.mood=!1}] t.player.drowning 10
execute as @a[scores={game.sfx.ambient.mood=1,t.player.drowning=190..300}] unless entity @s[scores={t.player.drowning=!190,t.player.drowning=!230,t.player.drowning=!260,t.player.drowning=!280,t.player.drowning=!299..300}] positioned as @s run playsound bubble.downinside @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.1 1 0
execute as @a[scores={game.sfx.ambient.mood=1,t.player.drowning=190..300}] unless entity @s[scores={t.player.drowning=!190,t.player.drowning=!230,t.player.drowning=!260,t.player.drowning=!280,t.player.drowning=!299..300}] positioned as @s run playsound bubble.up @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.4 0.5 0
execute as @a[scores={game.sfx.ambient.mood=1,t.player.drowning=190..300}] unless entity @s[scores={t.player.drowning=!190,t.player.drowning=!230,t.player.drowning=!260,t.player.drowning=!280,t.player.drowning=!299..300}] positioned as @s run playsound mob.squid.ambient @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 1 0.9 0
execute as @a[scores={game.sfx.ambient.mood=1,t.player.drowning=190..300}] unless entity @s[scores={t.player.drowning=!190,t.player.drowning=!230,t.player.drowning=!260,t.player.drowning=!280,t.player.drowning=!299..300}] positioned as @s run playsound mob.wolf.bark @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.3 0.25 0
execute as @a[scores={game.sfx.ambient.mood=1,t.player.drowning=190..300}] unless entity @s[scores={t.player.drowning=!190,t.player.drowning=!230,t.player.drowning=!260,t.player.drowning=!280,t.player.drowning=!299..300}] at @s anchored eyes as @e[c=2] as @e[c=2] run particle minecraft:bubble_column_up_particle ^ ^-0.1 ^0.45
execute positioned as @a[scores={game.sfx.ambient.mood=1,t.player.drowning=300}] run playsound mob.drowned.say @a[r=8,scores={game.sfx.ambient.mood=1}] ~ ~ ~ 0.1 0.45 0
scoreboard players reset @a[scores={t.player.drowning=..0,game.sfx.ambient.mood=!1}] t.player.drowning
execute as @a positioned as @s if block ~ ~ ~ water unless score @s t.player.wetness matches 360.. run scoreboard players add @s t.player.wetness 5
execute as @a[scores={t.player.wetness=1..}] positioned as @s unless block ~ ~ ~ water run scoreboard players remove @s t.player.wetness 1
scoreboard players reset @a[scores={t.player.wetness=..0}] t.player.wetness
execute as @a positioned as @s align xz unless entity @e[type=arrow,y=~32717,dy=100] unless block ~ ~-0.01 ~ air unless block ~ ~-0.01 ~ water run tag @s add query.player.step
execute positioned as @a[tag=query.player.step,scores={player.step=1..3,player.step=!2,t.player.wetness=1..,game.sfx.ambient.mood=!1}] run playsound mob.axolotl.hurt @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.014 1.8 0
execute positioned as @a[tag=query.player.step,scores={player.step=1..3,player.step=!2,t.player.wetness=1..,game.sfx.ambient.mood=!1}] run playsound mob.slime.jump @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.045 2.4 0
execute positioned as @a[tag=query.player.step,scores={player.step=1..3,player.step=!2,t.player.wetness=1..,game.sfx.ambient.mood=!1}] run particle minecraft:water_splash_particle ~ ~ ~
execute positioned as @a[tag=query.player.step,scores={player.step=2}] if block ~ ~ ~ water run playsound random.swim @a[r=8] ~ ~ ~ 0.125 0.6 0
execute positioned as @a[tag=query.player.step,scores={game.sfx.ambient.mood=1,player.step=2}] run playsound bubble.up @a[r=8] ~ ~ ~ 0.1425 0.25 0
execute as @a[tag=query.player.step,scores={player.step=1..3,player.step=!2}] positioned as @s unless entity @s[y=~0.7,dy=0] run playsound bundle.insert @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.1125 0.7 0.15
execute as @a[tag=query.player.step,scores={player.step=1..3,player.step=!2}] positioned as @s unless entity @s[y=~0.7,dy=0] if block ~ ~-1 ~ iron_block run playsound mob.irongolem.walk @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.3 0.5 0
execute as @a[tag=query.player.step,scores={player.step=1..3,player.step=!2}] positioned as @s unless entity @s[y=~0.7,dy=0] if block ~ ~-1 ~ iron_block run playsound mob.irongolem.walk @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.25 0.3 0
execute positioned as @a[tag=query.player.step,scores={player.step=0..4}] if block ~ ~ ~ bush run playsound block.leaf_litter.step @a[r=8] ~ ~ ~ 0.07 0.5 0
execute positioned as @a[tag=query.player.step,scores={player.step=0..4}] if block ~ ~ ~ short_grass run playsound block.leaf_litter.step @a[r=8] ~ ~ ~ 0.0525 0.59 0
execute positioned as @a[tag=query.player.step,scores={player.step=0..4}] positioned as @s if block ~ ~ ~ fern run playsound block.leaf_litter.step @a[r=8] ~ ~ ~ 0.060125 0.55 0
execute positioned as @a[tag=query.player.step,scores={player.step=0..4}] if block ~ ~ ~ short_grass run playsound step.grass @a[r=8] ~ ~ ~ 0.07 0.4 0
scoreboard players add @a[tag=query.player.step] player.step 1
execute positioned as @a[tag=query.player.step] run summon arrow ~ ~32767 ~
execute as @e[type=arrow] positioned as @s unless entity @p[y=~-32817,dy=100] run kill
execute as @e[type=arrow] run tp @s
tag @a[tag=query.player.step] remove query.player.step
scoreboard players set @a[scores={player.step=4..}] player.step 0
titleraw @a[tag=dev.debug.player] actionbar {"rawtext":[{"text":"game.sfx.ambient.loop_time = "},{"score":{"name":"*","objective":"game.sfx.ambient.loop_time"}},{"text":"\ngame.sfx.ambient.mood = "},{"score":{"name":"*","objective":"game.sfx.ambient.mood"}},{"text":"/"},{"score":{"name":"*","objective":"delta.game.sfx.ambient.mood"}},{"text":"\nt.player.drowning = "},{"score":{"name":"*","objective":"t.player.drowning"}},{"text":"\nt.player.wetness = "},{"score":{"name":"*","objective":"t.player.wetness"}},{"text":"\nplayer.step = "},{"score":{"name":"*","objective":"player.step"}}]}
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
execute as @e[tag=obj.spirit.internal] positioned as @s if entity @p[r=12] run scoreboard players random @s game.sfx.ambient.random 1 10
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.ambient.random=1}] run playsound bloom.sculk_catalyst @a[r=12] ~ ~ ~ 0.07 1.1 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.ambient.random=2}] run playsound bloom.sculk_catalyst @a[r=12] ~ ~ ~ 0.1 1.4 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.ambient.random=3}] run playsound particle.soul_escape @a[r=12] ~ ~ ~ 0.1 1.5 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.ambient.random=4}] run playsound particle.soul_escape @a[r=12] ~ ~ ~ 0.09 1.3 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.ambient.random=5}] run playsound mob.phantom.idle @a[r=12] ~ ~ ~ 0.1 0.3 0
execute as @e[tag=obj.spirit.internal] positioned as @s if entity @p[r=12] run scoreboard players random @s game.sfx.random 1 13
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=1}] run playsound ambient.warped_forest.mood @a[r=12] ~ ~ ~ 0.045 0.5 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=2}] run playsound apply_effect.bad_omen @a[r=12] ~ ~ ~ 0.0585 0.5 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=3}] run playsound block.creaking_heart.ambient @a[r=12] 0.98 0.9 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=4}] run playsound block.dried_ghast.ambient_water @a[r=12] ~ ~ ~ 0.5 0.5 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=5}] run playsound block.dried_ghast.state_change @s ~ ~ ~ 0.1 0.5 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=5}] run playsound block.dried_ghast.state_change @s ~ ~ ~ 0.05 0.8 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=6}] run playsound conduit.short @a[r=12] ~ ~ ~ 0.2 0.5 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=7}] run playsound mob.wolf.whine @a[r=12] ~ ~ ~ 0.01 0.2 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=7}] run playsound mob.wolf.whine @a[r=12] ~ ~ ~ 0.02 0.15 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=7}] run playsound mob.wolf.whine @a[r=12] ~ ~ ~ 0.009 0.3 0
execute positioned as @e[tag=obj.spirit.internal,scores={game.sfx.random=8..11}] run playsound block.eyeblossom.open_long @a[r=12] ~ ~ ~ 0.5 0.5 0
execute positioned as @e[tag=obj.spirit.internal] run playsound ambient.weather.rain @a[r=12] ~ ~ ~ 0.045 2 0
execute as @e[tag=obj.artefact.base] positioned as @s if entity @p[r=12] run scoreboard players random @s game.sfx.random 1 9
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=1}] run playsound apply_effect.raid_omen @a[r=12] ~ ~ ~ 0.06 0.4 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=1}] run playsound mob.warden.listening_angry @a[r=12] ~ ~ ~ 0.09 0.3 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=2}] run playsound apply_effect.trial_omen @a[r=12] ~ ~ ~ 0.066 0.8 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=2}] run playsound apply_effect.trial_omen @a[r=12] ~ ~ ~ 0.065 0.5 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=2}] run playsound apply_effect.trial_omen @a[r=12] ~ ~ ~ 0.0625 0.3 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=2}] run playsound scrape @a[r=12] ~ ~ ~ 0.2975 0.1 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=3}] run playsound mob.creaking.deactivate @a[r=12] ~ ~ ~ 0.06 0.5 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=4}] run playsound mob.creaking.twitch @a[r=12] ~ ~ ~ 0.0389 0.7 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=4}] run playsound shriek.sculk_shrieker @a[r=12] ~ ~ ~ 0.028 0.6 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=4}] run playsound mob.fox.screech @a[r=12] ~ ~ ~ 0.07651101 0.2 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=4}] run scoreboard players set "game.sfx.fox_screech.cooldown" gb.timer 90
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=5}] run playsound mob.evocation_illager.prepare_attack @a[r=12] ~ ~ ~ 0.1 0.5 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=6}] run playsound item.spyglass.use @a[r=12] ~ ~ ~ 0.1 0.2 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=6}] run playsound item.spyglass.use @a[r=12] ~ ~ ~ 0.09 0.125 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=6}] run playsound item.spyglass.use @a[r=12] ~ ~ ~ 0.08 0.3 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=6}] run playsound chime.amethyst_block @a[r=12] ~ ~ ~ 0.215 0.15 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.random=7}] run playsound ambient.weather.the_end_light_flash @a[r=12] ~ ~ ~ 0.6 0.4 0
execute as @e[tag=obj.artefact.base] positioned as @s if entity @p[r=12] run scoreboard players random @s game.sfx.ambient.random 1 10
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.ambient.random=1}] run playsound bloom.sculk_catalyst @a[r=12] ~ ~ ~ 0.07 1.1 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.ambient.random=2}] run playsound bloom.sculk_catalyst @a[r=12] ~ ~ ~ 0.1 1.4 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.ambient.random=3}] run playsound particle.soul_escape @a[r=12] ~ ~ ~ 0.1 1.5 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.ambient.random=4}] run playsound particle.soul_escape @a[r=12] ~ ~ ~ 0.09 1.3 0
execute positioned as @e[tag=obj.artefact.base,scores={game.sfx.ambient.random=5}] run playsound bloom.sculk_catalyst @a[r=12] ~ ~ ~ 0.13425 0.76 0
execute positioned as @e[tag=obj.artefact.base] run playsound fire.fire @a[r=12] ~ ~ ~ 0.025 0.5 0
execute positioned as @e[tag=obj.artefact.base] run playsound mob.warden.nearby_close @a[r=12] ~ ~ ~ 0.0666 0.6 0
execute positioned as @e[tag=obj.artefact.base] run playsound beacon.ambient @a[r=12] ~ ~ ~ 0.0666 0.74 0
execute positioned as @e[tag=obj.artefact.base] run playsound portal.portal @a[r=12] ~ ~ ~ 0.0666 0.4 0
execute positioned as @e[tag=obj.artefact.base] run playsound mob.horse.breathe @a[r=12] ~ ~ ~ 0.066 0.4 0
execute positioned as @e[tag=obj.artefact.base] run playsound mob.horse.breathe @a[r=12] ~ ~ ~ 0.0444 0.5 0
execute positioned as @a positioned as @n[tag=obj.class.floating_debris,r=8.5] run playsound beacon.ambient @a[r=8.5] ~ ~ ~ 0.112 0.4 0
execute positioned as @a positioned as @n[tag=obj.class.floating_debris,r=8.5] run playsound block.dried_ghast.state_change @a[r=8] ~ ~ ~ 0.2505 0.18 0
execute positioned as @a positioned as @n[tag=obj.class.floating_debris,r=8.5] run playsound note.flute @a[r=8] ~ ~ ~ 0.0335512 0.1 0
stopsound @a mob.fox.sniff
stopsound @a mob.fox.sleep
stopsound @a mob.fox.aggro
stopsound @a mob.fox.ambient
stopsound @a mob.fox.eat
stopsound @a mob.fox.death
stopsound @a mob.fox.hurt
execute if score "game.sfx.fox_screech.cooldown" gb.timer matches 1.. run scoreboard players remove "game.sfx.fox_screech.cooldown" gb.timer 1
execute if score "game.sfx.fox_screech.cooldown" gb.timer matches 0 run stopsound @a mob.fox.screech
stopsound @a mob.ghastling.ambient