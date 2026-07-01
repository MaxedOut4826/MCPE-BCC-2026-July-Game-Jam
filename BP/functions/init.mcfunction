#* Scoreboard Objectives

# Dialogue
scoreboard objectives add game.dialogue.sequence dummy
scoreboard objectives add game.dialogue.pointer dummy
scoreboard objectives add game.dialogue.pointer.x dummy
scoreboard objectives add game.dialogue.pointer.y dummy
scoreboard objectives add game.dialogue.pointer.z dummy
scoreboard objectives add game.dialogue.pointer.speed dummy
scoreboard objectives add game.dialogue.length dummy
scoreboard objectives add game.dialogue.voice dummy
scoreboard objectives add game.dialogue.voice.random dummy

# Sounds
scoreboard objectives add delta.game.sfx.ambient.mood dummy
scoreboard objectives add game.sfx.ambient.mood dummy
scoreboard objectives add game.sfx.ambient.loop_time dummy
scoreboard objectives add game.sfx.ambient.random dummy
scoreboard objectives add game.sfx.random dummy

# Global
scoreboard objectives add global.constant dummy
scoreboard objectives add global.displace.x dummy
scoreboard objectives add global.displace.y dummy
scoreboard objectives add global.displace.z dummy
scoreboard objectives add global.generic dummy
scoreboard objectives add global.random dummy
scoreboard objectives add global.timer dummy
scoreboard objectives add global.count dummy
scoreboard objectives add global.id dummy

# Animations
scoreboard objectives add delta.game.animation.player_count dummy
scoreboard objectives add delta.game.animation.state dummy
scoreboard objectives add game.animation.player_count dummy
scoreboard objectives add game.animation.state dummy
scoreboard objectives add game.animation.timer dummy

# Player
scoreboard objectives add delta.player.render.room dummy
scoreboard objectives add player.render.room dummy
scoreboard objectives add player.step dummy
scoreboard objectives add temp.player.crawl_time dummy
scoreboard objectives add temp.player.drowning dummy
scoreboard objectives add temp.player.wetness dummy
scoreboard objectives add query.player.crouch dummy
scoreboard objectives add query.player.joined_world dummy

# Game
scoreboard objectives add delta.game.animation.progress dummy
scoreboard objectives add game.progress dummy
scoreboard objectives add game.version dummy
scoreboard objectives add game.hud.tooltip dummy
scoreboard objectives add game.hud.tooltip.timer dummy
scoreboard objectives add game.hud.tooltip.y dummy

# Misc
scoreboard objectives add temp.interact.id dummy
scoreboard objectives add entity.id dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy


#* Fake Player Scores

# Math Constants
scoreboard players set "MATH.9" global.constant 0