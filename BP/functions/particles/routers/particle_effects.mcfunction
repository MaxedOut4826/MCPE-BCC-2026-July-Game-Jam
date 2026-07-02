# Generic
execute if entity @s[tag=particle.bubble.normal] run particle minecraft:basic_bubble_particle ~ ~ ~
execute if entity @s[tag=particle.bubble.up] run particle minecraft:bubble_column_up_particle ~ ~ ~
execute if entity @s[tag=particle.dust.still] run particle minecraft:mycelium_dust_particle ~ ~ ~
execute if entity @s[tag=particle.dust.moving] run particle minecraft:lab_table_heatblock_dust_particle ~ ~ ~
execute if entity @s[tag=particle.dust.falling] run particle minecraft:falling_dust_gravel_particle ~ ~ ~
execute if entity @s[tag=particle.dust.cold] run particle minecraft:falling_dust_top_snow_particle ~ ~ ~
execute if entity @s[tag=particle.dust.plume] run particle minecraft:dust_plume ~ ~ ~
execute if entity @s[tag=particle.dust.infinite] run particle minecraft:phantom_trail_particle ~ ~ ~
execute if entity @s[tag=particle.water_drip.slow] run particle minecraft:stalactite_water_drip_particle ~ ~ ~
execute if entity @s[tag=particle.water_drip.normal] run particle minecraft:water_drip_particle ~ ~ ~
execute if entity @s[tag=particle.water_drip.splash] run particle minecraft:water_splash_particle ~ ~ ~
execute if entity @s[tag=particle.artefact.tear] run particle minecraft:obsidian_tear_particle ~ ~ ~
execute if entity @s[tag=particle.artefact.portal] run particle minecraft:portal_directional ~ ~ ~

# Randomised

## EXAMPLES TO REMOVE
execute if entity @s[tag=particle.artefact.glyph,scores={global.random=1}] run particle minecraft:small_soul_fire_flame ~ ~ ~
execute if entity @s[tag=particle.artefact.glyph,scores={global.random=2}] run particle minecraft:lab_table_misc_mystical_particle ~ ~ ~

execute if entity @s[tag=particle.spirit.cleansed,tag=!particle.spirit.corrupt,scores={global.random=1}] run particle minecraft:trial_omen_ambient ~ ~ ~
execute if entity @s[tag=particle.spirit.cleansed,tag=!particle.spirit.corrupt,scores={global.random=2}] run particle minecraft:soul_particle ~ ~ ~
execute if entity @s[tag=particle.spirit.cleansed,tag=!particle.spirit.corrupt] unless score @s global.random = @s global.random run particle minecraft:eyeblossom_close ~ ~ ~

execute if entity @s[tag=particle.spirit.corrupt,scores={global.random=1}] run particle minecraft:raid_omen_ambient ~ ~ ~
execute if entity @s[tag=particle.spirit.corrupt,scores={global.random=2}] run particle minecraft:sculk_soul_particle ~ ~ ~
execute if entity @s[tag=particle.spirit.corrupt] unless score @s global.random = @s global.random run particle minecraft:eyeblossom_open ~ ~ ~