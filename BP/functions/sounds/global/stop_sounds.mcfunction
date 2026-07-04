# Cancel natural music
music volume 0

stopsound @a mob.fox.sniff
stopsound @a mob.fox.sleep
stopsound @a mob.fox.aggro
stopsound @a mob.fox.ambient
stopsound @a mob.fox.eat
stopsound @a mob.fox.death
stopsound @a mob.fox.hurt
stopsound @a mob.ghastling.ambient

# Stop screech conditionally
execute if score "game.sfx.fox_screech.cooldown" global.timer matches 1.. run scoreboard players remove "game.sfx.fox_screech.cooldown" global.timer 1
execute unless score "game.sfx.fox_screech.cooldown" global.timer matches 1.. run stopsound @a mob.fox.screech