execute as @s run bossbar set dafi.ball.possession color white
execute as @s run bossbar set dafi.ball.possession value 100
execute as @s run bossbar set dafi.ball.possession name {"text":"\u25c0 ball in play! \u25b6","color":"white"}

scoreboard players reset @s dafi.ball.dropNoteBlock
tag @s remove dafi.balling
scoreboard players reset @s dafi.glow.duration
execute at @s run function dafi:internal/game/ball/summon
