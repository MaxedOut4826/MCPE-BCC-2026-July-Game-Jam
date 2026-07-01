scoreboard players random @e[tag=particle.artefact.tear] gb.displace.x 70 110
scoreboard players random @e[tag=particle.artefact.tear] gb.displace.y 50 50
scoreboard players random @e[tag=particle.artefact.tear] gb.displace.z 70 110
scoreboard players random @e[tag=particle.artefact.portal] gb.displace.x 0 200
scoreboard players random @e[tag=particle.artefact.portal] gb.displace.y 0 200
scoreboard players random @e[tag=particle.artefact.portal] gb.displace.z 0 200
execute positioned as @e[tag=obj.spirit.internal] run scoreboard players random @e[x=~-2,y=~-2,z=~-2,r=1,tag=particle.spirit.cleansed] gb.displace.x 50 300
execute positioned as @e[tag=obj.spirit.internal] run scoreboard players random @e[x=~-2,y=~-2,z=~-2,r=1,tag=particle.spirit.cleansed] gb.displace.y 50 300
execute positioned as @e[tag=obj.spirit.internal] run scoreboard players random @e[x=~-2,y=~-2,z=~-2,r=1,tag=particle.spirit.cleansed] gb.displace.z 150 300
execute positioned as @e[tag=obj.spirit.internal] run scoreboard players random @e[x=~-2,y=~-2,z=~-2,r=1,tag=particle.spirit.cleansed] gb.random 1 16
scoreboard players random @e[x=960,y=0,z=960,r=1,tag=particle.spirit.cleansed] gb.displace.x 0 8100
scoreboard players random @e[x=960,y=0,z=960,r=1,tag=particle.spirit.cleansed] gb.displace.y 0 3600
scoreboard players random @e[x=960,y=0,z=960,r=1,tag=particle.spirit.cleansed] gb.displace.z 0 8100
scoreboard players random @e[tag=particle.artefact.glyph] gb.displace.x 100 300
scoreboard players random @e[tag=particle.artefact.glyph] gb.displace.y 100 300
scoreboard players random @e[tag=particle.artefact.glyph] gb.displace.z 100 300
scoreboard players random @e[tag=particle.artefact.glyph] gb.random 1 2
execute as @e[scores={gb.displace.x=4096..}] positioned as @s run tp ~40.96 ~ ~
scoreboard players remove @e[scores={gb.displace.x=4096..}] gb.displace.x 4096
execute as @e[scores={gb.displace.x=2048..}] positioned as @s run tp ~20.48 ~ ~
scoreboard players remove @e[scores={gb.displace.x=2048..}] gb.displace.x 2048
execute as @e[scores={gb.displace.x=1024..}] positioned as @s run tp ~10.24 ~ ~
scoreboard players remove @e[scores={gb.displace.x=1024..}] gb.displace.x 1024
execute as @e[scores={gb.displace.x=512..}] positioned as @s run tp ~5.12 ~ ~
scoreboard players remove @e[scores={gb.displace.x=512..}] gb.displace.x 512
execute as @e[scores={gb.displace.x=256..}] positioned as @s run tp ~2.56 ~ ~
scoreboard players remove @e[scores={gb.displace.x=256..}] gb.displace.x 256
execute as @e[scores={gb.displace.x=128..}] positioned as @s run tp ~1.28 ~ ~
scoreboard players remove @e[scores={gb.displace.x=128..}] gb.displace.x 128
execute as @e[scores={gb.displace.x=64..}] positioned as @s run tp ~0.64 ~ ~
scoreboard players remove @e[scores={gb.displace.x=64..}] gb.displace.x 64
execute as @e[scores={gb.displace.x=32..}] positioned as @s run tp ~0.32 ~ ~
scoreboard players remove @e[scores={gb.displace.x=32..}] gb.displace.x 32
execute as @e[scores={gb.displace.x=16..}] positioned as @s run tp ~0.16 ~ ~
scoreboard players remove @e[scores={gb.displace.x=16..}] gb.displace.x 16
execute as @e[scores={gb.displace.x=8..}] positioned as @s run tp ~0.08 ~ ~
scoreboard players remove @e[scores={gb.displace.x=8..}] gb.displace.x 8
execute as @e[scores={gb.displace.x=4..}] positioned as @s run tp ~0.04 ~ ~
scoreboard players remove @e[scores={gb.displace.x=4..}] gb.displace.x 4
execute as @e[scores={gb.displace.x=2..}] positioned as @s run tp ~0.02 ~ ~
scoreboard players remove @e[scores={gb.displace.x=2..}] gb.displace.x 2
execute as @e[scores={gb.displace.x=1..}] positioned as @s run tp ~0.01 ~ ~
scoreboard players remove @e[scores={gb.displace.x=1..}] gb.displace.x 1
execute as @e[scores={gb.displace.z=4096..}] positioned as @s run tp ~ ~ ~40.96
scoreboard players remove @e[scores={gb.displace.z=4096..}] gb.displace.z 4096
execute as @e[scores={gb.displace.z=2048..}] positioned as @s run tp ~ ~ ~20.48
scoreboard players remove @e[scores={gb.displace.z=2048..}] gb.displace.z 2048
execute as @e[scores={gb.displace.z=1024..}] positioned as @s run tp ~ ~ ~10.24
scoreboard players remove @e[scores={gb.displace.z=1024..}] gb.displace.z 1024
execute as @e[scores={gb.displace.z=512..}] positioned as @s run tp ~ ~ ~5.12
scoreboard players remove @e[scores={gb.displace.z=512..}] gb.displace.z 512
execute as @e[scores={gb.displace.z=256..}] positioned as @s run tp ~ ~ ~2.56
scoreboard players remove @e[scores={gb.displace.z=256..}] gb.displace.z 256
execute as @e[scores={gb.displace.z=128..}] positioned as @s run tp ~ ~ ~1.28
scoreboard players remove @e[scores={gb.displace.z=128..}] gb.displace.z 128
execute as @e[scores={gb.displace.z=64..}] positioned as @s run tp ~ ~ ~0.64
scoreboard players remove @e[scores={gb.displace.z=64..}] gb.displace.z 64
execute as @e[scores={gb.displace.z=32..}] positioned as @s run tp ~ ~ ~0.32
scoreboard players remove @e[scores={gb.displace.z=32..}] gb.displace.z 32
execute as @e[scores={gb.displace.z=16..}] positioned as @s run tp ~ ~ ~0.16
scoreboard players remove @e[scores={gb.displace.z=16..}] gb.displace.z 16
execute as @e[scores={gb.displace.z=8..}] positioned as @s run tp ~ ~ ~0.08
scoreboard players remove @e[scores={gb.displace.z=8..}] gb.displace.z 8
execute as @e[scores={gb.displace.z=4..}] positioned as @s run tp ~ ~ ~0.04
scoreboard players remove @e[scores={gb.displace.z=4..}] gb.displace.z 4
execute as @e[scores={gb.displace.z=2..}] positioned as @s run tp ~ ~ ~0.02
scoreboard players remove @e[scores={gb.displace.z=2..}] gb.displace.z 2
execute as @e[scores={gb.displace.z=1..}] positioned as @s run tp ~ ~ ~0.01
scoreboard players remove @e[scores={gb.displace.z=1..}] gb.displace.z 1
execute as @e[scores={gb.displace.y=4096..}] positioned as @s run tp ~ ~40.96 ~
scoreboard players remove @e[scores={gb.displace.y=4096..}] gb.displace.y 4096
execute as @e[scores={gb.displace.y=2048..}] positioned as @s run tp ~ ~20.48 ~
scoreboard players remove @e[scores={gb.displace.y=2048..}] gb.displace.y 2048
execute as @e[scores={gb.displace.y=1024..}] positioned as @s run tp ~ ~10.24 ~
scoreboard players remove @e[scores={gb.displace.y=1024..}] gb.displace.y 1024
execute as @e[scores={gb.displace.y=512..}] positioned as @s run tp ~ ~5.12 ~
scoreboard players remove @e[scores={gb.displace.y=512..}] gb.displace.y 512
execute as @e[scores={gb.displace.y=256..}] positioned as @s run tp ~ ~2.56 ~
scoreboard players remove @e[scores={gb.displace.y=256..}] gb.displace.y 256
execute as @e[scores={gb.displace.y=128..}] positioned as @s run tp ~ ~1.28 ~
scoreboard players remove @e[scores={gb.displace.y=128..}] gb.displace.y 128
execute as @e[scores={gb.displace.y=64..}] positioned as @s run tp ~ ~0.64 ~
scoreboard players remove @e[scores={gb.displace.y=64..}] gb.displace.y 64
execute as @e[scores={gb.displace.y=32..}] positioned as @s run tp ~ ~0.32 ~
scoreboard players remove @e[scores={gb.displace.y=32..}] gb.displace.y 32
execute as @e[scores={gb.displace.y=16..}] positioned as @s run tp ~ ~0.16 ~
scoreboard players remove @e[scores={gb.displace.y=16..}] gb.displace.y 16
execute as @e[scores={gb.displace.y=8..}] positioned as @s run tp ~ ~0.08 ~
scoreboard players remove @e[scores={gb.displace.y=8..}] gb.displace.y 8
execute as @e[scores={gb.displace.y=4..}] positioned as @s run tp ~ ~0.04 ~
scoreboard players remove @e[scores={gb.displace.y=4..}] gb.displace.y 4
execute as @e[scores={gb.displace.y=2..}] positioned as @s run tp ~ ~0.02 ~
scoreboard players remove @e[scores={gb.displace.y=2..}] gb.displace.y 2
execute as @e[scores={gb.displace.y=1..}] positioned as @s run tp ~ ~0.01 ~
scoreboard players remove @e[scores={gb.displace.y=1..}] gb.displace.y 1
execute positioned as @e[tag=particle.bubble.normal] run particle minecraft:basic_bubble_particle ~ ~ ~
execute positioned as @e[tag=particle.bubble.up] run particle minecraft:bubble_column_up_particle ~ ~ ~
execute positioned as @e[tag=particle.dust.still] run particle minecraft:mycelium_dust_particle ~ ~ ~
execute positioned as @e[tag=particle.dust.moving] run particle minecraft:lab_table_heatblock_dust_particle ~ ~ ~
execute positioned as @e[tag=particle.dust.falling] run particle minecraft:falling_dust_gravel_particle ~ ~ ~
execute positioned as @e[tag=particle.dust.cold] run particle minecraft:falling_dust_top_snow_particle ~ ~ ~
execute positioned as @e[tag=particle.dust.plume] run particle minecraft:dust_plume ~ ~ ~
execute positioned as @e[tag=particle.dust.infinite] run particle minecraft:phantom_trail_particle ~ ~ ~
execute positioned as @e[tag=particle.water_drip.slow] run particle minecraft:stalactite_water_drip_particle ~ ~ ~
execute positioned as @e[tag=particle.water_drip.normal] run particle minecraft:water_drip_particle ~ ~ ~
execute positioned as @e[tag=particle.water_drip.splash] run particle minecraft:water_splash_particle ~ ~ ~
execute positioned as @e[tag=particle.artefact.glyph,scores={gb.random=1}] run particle minecraft:small_soul_fire_flame ~ ~ ~
execute positioned as @e[tag=particle.artefact.glyph,scores={gb.random=2}] run particle minecraft:lab_table_misc_mystical_particle ~ ~ ~
execute positioned as @e[tag=particle.spirit.cleansed,tag=!particle.spirit.corrupt] unless score @n gb.random matches ..2 run particle minecraft:eyeblossom_close ~ ~ ~
execute positioned as @e[tag=particle.spirit.cleansed,tag=!particle.spirit.corrupt,scores={gb.random=1}] run particle minecraft:trial_omen_ambient ~ ~ ~
execute positioned as @e[tag=particle.spirit.cleansed,tag=!particle.spirit.corrupt,scores={gb.random=2}] run particle minecraft:soul_particle ~ ~ ~
execute positioned as @e[tag=particle.spirit.corrupt] unless score @n gb.random matches ..2 run particle minecraft:eyeblossom_open ~ ~ ~
execute positioned as @e[tag=particle.spirit.corrupt,scores={gb.random=1}] run particle minecraft:raid_omen_ambient ~ ~ ~
execute positioned as @e[tag=particle.spirit.corrupt,scores={gb.random=2}] run particle minecraft:sculk_soul_particle ~ ~ ~
execute positioned as @e[tag=particle.artefact.tear] run particle minecraft:obsidian_tear_particle ~ ~ ~
execute positioned as @e[tag=particle.artefact.portal] run particle minecraft:portal_directional ~ ~ ~
kill @e[tag=class.particle]