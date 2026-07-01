execute as @a[m=!c] unless score @s q.joined_world matches 1 run tp @s 0 1 0 0 0
execute as @a unless score @s q.joined_world matches 1 run effect @s saturation infinite 255 true
execute as @a unless score @s q.joined_world matches 1 run effect @s instant_health infinite 255 true
execute as @a[m=!c] unless score @s q.joined_world matches 1 run hud @s hide all
execute as @a unless score @s q.joined_world matches 1 run hud @s reset crosshair
execute as @a unless score @s q.joined_world matches 1 run scoreboard players set @s game.sfx.ambient.loop_time 0
scoreboard players reset * q.joined_world
scoreboard players set @a q.joined_world 1
execute as @a[scores={game.sfx.ambient.mood=!1}] unless score @s q.crouch matches 0.. positioned as @s unless entity @s[y=~1.5,dy=0] if entity @s[y=~0.7,dy=0] run playsound bundle.insert @a[r=8] ~ ~ ~ 0.15 1 0
execute as @a[scores={game.sfx.ambient.mood=!1,q.crouch=0}] positioned as @s if entity @s[y=~1.5,dy=0] run playsound bundle.insert @a[r=8] ~ ~ ~ 0.088 1.4 0
execute as @a[scores={game.sfx.ambient.mood=!1}] positioned as @s unless entity @s[y=~1.5,dy=0] if entity @s[y=~0.7,dy=0] run scoreboard players add @s q.crouch 0
execute as @a[scores={q.crouch=0..}] positioned as @s if entity @s[y=~1.5,dy=0] run scoreboard players add @s q.crouch 1
execute positioned as @a[scores={t.player.crawl_time=0..}] run fill ~3 ~3 ~3 ~-3 ~-1 ~-3 air replace barrier
execute as @a[scores={q.crouch=1..,game.sfx.ambient.mood=!1}] positioned as @s unless entity @s[y=~1.5,dy=0] if entity @s[y=~0.7,dy=0] unless block ~ ~-0.01 ~ air unless block ~ ~ ~ water unless score @s t.player.crawl_time matches 0.. run playsound bundle.drop_contents @a[r=8] ~ ~ ~ 0.12 0.79 0
execute as @a[scores={q.crouch=1..,game.sfx.ambient.mood=!1}] positioned as @s unless entity @s[y=~1.5,dy=0] if entity @s[y=~0.7,dy=0] unless block ~ ~-0.01 ~ air unless block ~ ~ ~ water unless score @s t.player.crawl_time matches 0.. run playsound mob.irongolem.throw @a[r=8] ~ ~ ~ 0.155 0.9 0.225
execute as @a[scores={q.crouch=1..,game.sfx.ambient.mood=!1}] positioned as @s unless entity @s[y=~1.5,dy=0] if entity @s[y=~0.7,dy=0] unless block ~ ~-0.01 ~ air unless block ~ ~ ~ water unless score @s t.player.crawl_time matches 0.. run scoreboard players set @s t.player.crawl_time 0
scoreboard players reset @a[scores={q.crouch=11..}] q.crouch
execute positioned as @a[scores={t.player.crawl_time=0..599}] run setblock ~ ~1.5 ~ barrier keep
execute as @a[scores={t.player.crawl_time=600}] positioned as @s if entity @s[y=~1.5,dy=0] run playsound bundle.remove_one @a[r=8] ~ ~ ~ 0.18 0.7 0
execute as @a[scores={t.player.crawl_time=1..}] unless entity @s[scores={t.player.crawl_time=!600..,game.sfx.ambient.mood=!1}] positioned as @s if entity @s[y=~1.5,dy=0] run scoreboard players reset @s t.player.crawl_time
execute as @a[scores={t.player.crawl_time=1..}] positioned as @s if block ~ ~-0.01 ~ air run scoreboard players set @s t.player.crawl_time 600
scoreboard players add @a[scores={t.player.crawl_time=0..599}] t.player.crawl_time 1
titleraw @a[tag=dev.debug.crawl] actionbar {"rawtext":[{"text":"q.crouch = "},{"score":{"name":"*","objective":"q.crouch"}},{"text":"\ncrouch.length = "},{"score":{"name":"*","objective":"t.player.crawl_time"}}]}
execute as @a[tag=!query.in_air] positioned as @s if block ~ ~-0.01 ~ air run playsound mob.snowgolem.hurt @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.04 1.4 0
execute as @a[tag=!query.in_air] positioned as @s if block ~ ~-0.01 ~ air run tag @s add query.in_air
execute as @a[tag=query.in_air] positioned as @s unless block ~ ~-0.01 ~ air unless block ~ ~-0.01 ~ water run playsound armor.equip_leather @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.03 0.8 0
execute as @a[tag=query.in_air] positioned as @s unless block ~ ~-0.01 ~ air  unless block ~ ~-0.01 ~ water run playsound hit.stone @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.2 0.8 0
execute as @a[tag=query.in_air] positioned as @s unless block ~ ~-0.01 ~ air  unless block ~ ~-0.01 ~ water run playsound hit.sand @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.04 0.7 0
execute as @a[tag=query.in_air] positioned as @s unless block ~ ~-0.01 ~ air  unless block ~ ~-0.01 ~ water run playsound mob.axolotl.hurt @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.019 1.8 0
execute as @a[tag=query.in_air,scores={t.player.wetness=1..}] positioned as @s unless block ~ ~-0.01 ~ air  unless block ~ ~-0.01 ~ water run playsound mob.slime.jump @a[r=8,scores={game.sfx.ambient.mood=!1}] ~ ~ ~ 0.125 2.5 0
execute as @a[tag=query.in_air] positioned as @s unless block ~ ~-0.01 ~ air unless block ~ ~-0.01 ~ water run tag @s remove query.in_air
execute as @a positioned as @s anchored eyes if block ~ ~ ~ bed run tp ~ ~ ~
music volume 0
execute as @a[scores={game.hud.tooltip=!0}] unless score @s game.hud.tooltip.timer = @s game.hud.tooltip.timer run scoreboard players set @s game.hud.tooltip.timer 0
execute as @a[scores={game.hud.tooltip.timer=0}] positioned as @s run playsound item.spyglass.use @s ~ ~ ~ 0.8 0.8 0.8
scoreboard players add @a[scores={game.hud.tooltip.timer=0..}] game.hud.tooltip.timer 1
titleraw @a[scores={game.hud.tooltip=!0}] actionbar {"rawtext":[{"translate":"%%%%s","with":{"rawtext":[{"score":{"name":"*","objective":"game.hud.tooltip"}},{"text":"§fHold§l§e :_input_key.forward::_input_key.left::_input_key.back::_input_key.right: §r§fto move"},{"text":"§fPress§l§e :_input_key.jump: §r§fto jump" },{"text":"§fHold§l§e :_input_key.sneak: §r§fto sneak" },{"text":"§fDouble tap§l§e :_input_key.sneak: §r§fto crawl"},{"text":"§fPress§l§e :_input_key.sprint: §r§fto run" },{"text":"§fPress§l§e :_input_key.attack: §r§fto interact" },{"text":"§fPress§l§e :_input_key.inventory: §r§fto open inventory"},{"text":"§fPress§l§e :_input_key.jump: §r§fto stop crawling"}]}}]}
scoreboard players reset @a[scores={game.hud.tooltip.timer=80..}] game.hud.tooltip
scoreboard players reset @a[scores={game.hud.tooltip.timer=100..}] game.hud.tooltip.timer
execute as @e[tag=class.interaction] unless entity @s[hasitem={item=minecraft:wolf_armor,data=0}] if score "game.level" game.progress = @s game.progress run scoreboard players add "game.level" game.progress 1
execute unless score "game.level" delta.game.progress = "game.level" game.progress run tellraw @a {"rawtext":[{"translate":"game.progress: %%2 >> %%1","with":{"rawtext":[{"score":{"name":"game.level","objective":"game.progress"}},{"score":{"name":"game.level","objective":"delta.game.progress"}}]}}]}
execute as @e[tag=class.interaction] unless entity @s[hasitem={item=minecraft:wolf_armor,data=0}] run replaceitem entity @s slot.armor.head 0 wolf_armor 1 0
execute unless score "game.level" delta.game.progress = "game.level" game.progress run scoreboard players operation "game.level" delta.game.progress = "game.level" game.progress
tellraw @a[tag=event.game.save_progress] {"rawtext":[{"text":":camera:"}]}
tag @a[tag=event.game.save_progress] remove event.game.save_progress
tellraw @p {"rawtext":[{"text":"§l§e\nOBJECTIVE\n§r§fEnable power to the Happy Factory\n "}]}