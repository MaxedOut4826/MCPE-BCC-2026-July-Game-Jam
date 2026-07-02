scoreboard players set @a player.render.area 0

function rendering/routers/unload
function rendering/routers/load

titleraw @a[tag=dev.debug.room] actionbar {"rawtext":[{"text":"player.render.area = "},{"score":{"name":"*","objective":"player.render.area"}}]}