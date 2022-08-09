## SCOREBOARD
scoreboard players reset #cd defusal
scoreboard players reset #clone defusal
scoreboard players reset #mod defusal
scoreboard players reset #stage defusal
scoreboard players reset #blue defusal
scoreboard players reset #red defusal

## BOSSBAR
bossbar remove defuse 

## GAMEMODE
gamemode adventure @a[team=red, gamemode=spectator] 
gamemode adventure @a[team=blue, gamemode=spectator]

## ITEM
clear @a[team=blue] shears
clear @a[team=red] creeper_spawn_egg

## CREEPER RESET
execute at @e[type=creeper, tag=bomb, tag=planted] run setblock ~ ~2 ~ air 
kill @e[type=creeper, tag=bomb]

## PLAYERS
kill @a[team=red]
kill @a[team=blue]