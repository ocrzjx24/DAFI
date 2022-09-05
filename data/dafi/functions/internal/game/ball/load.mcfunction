scoreboard objectives add dafi.ball.dropNoteBlock minecraft.dropped:minecraft.note_block

scoreboard objectives add dafi.ball.x1 dummy
scoreboard objectives add dafi.ball.y1 dummy
scoreboard objectives add dafi.ball.z1 dummy
scoreboard objectives add dafi.ball.x2 dummy
scoreboard objectives add dafi.ball.y2 dummy
scoreboard objectives add dafi.ball.z2 dummy
scoreboard objectives add dafi.ball.x3 dummy
scoreboard objectives add dafi.ball.y3 dummy
scoreboard objectives add dafi.ball.z3 dummy

## SCORES AND SCORING
scoreboard objectives add dafi.ball.board dummy
scoreboard objectives modify dafi.ball.board displayname ["",{"text":"\u1405 SCO","bold":true,"color":"white"},{"text":"R","bold":true,"color":"gold"},{"text":"E \u140a","bold":true,"color":"yellow"}]

## BOSSBAR
bossbar add dafi.ball.possession ""

## DEATH
scoreboard objectives add dafi.ball.death deathCount