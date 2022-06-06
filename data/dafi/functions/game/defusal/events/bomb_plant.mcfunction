## ITEM
clear @a[team=red] creeper_spawn_egg 

## TP
execute as @e[type=creeper,tag=bomb, tag=!planted] run tp ~ ~-2 ~
## TINTED
# SCOREBOARD
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ tinted_glass run scoreboard players set #stage defusal 3
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ tinted_glass run scoreboard players set #cd defusal 900
# BOSSBAR
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ tinted_glass run bossbar set defuse name "BOMB PLANTED - A SITE"
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ tinted_glass run bossbar set defuse color red
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ tinted_glass run execute store result bossbar defuse max run scoreboard players get #cd defusal

## STAINED
# SCOREBOARD
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ black_stained_glass run scoreboard players set #stage defusal 3
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ black_stained_glass run scoreboard players set #cd defusal 900
# BOSSBAR
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ black_stained_glass run bossbar set defuse name "BOMB PLANTED - B SITE"
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ black_stained_glass run bossbar set defuse color purple
execute at @e[type=creeper,tag=bomb, tag=!planted] if block ~ ~1 ~ black_stained_glass run execute store result bossbar defuse max run scoreboard players get #cd defusal

## SETBLOCK
execute at @e[type=creeper,tag=bomb, tag=!planted] run setblock ~ ~2 ~ daylight_detector

## TAG
execute at @e[type=creeper,tag=bomb, tag=!planted] run tag @e[type=creeper, tag=bomb] add planted