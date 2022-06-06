## RESET
function dafi:game/defusal/events/reset

## GAMEMODE CHANGE
gamemode adventure @a[team=red]
gamemode adventure @a[team=blue]

## ITEMS

## BOSSBAR
bossbar add defuse "DEFUSAL - DAFI"
bossbar set defuse players @a
bossbar set defuse max 1
bossbar set defuse color white
bossbar set defuse value 1
bossbar set defuse style progress
bossbar set defuse visible true

## SCOREBOARDS
scoreboard players reset @a[scores={defusal=1}] defusal 
scoreboard players set #cd defusal 100
scoreboard players set #clone defusal 0
scoreboard players set #mod defusal 30
scoreboard players set #stage defusal 1
# TEAM COUNT
scoreboard players set #blue defusal 0
scoreboard players set #red defusal 0
scoreboard players set @a defusalDeaths 0
execute at @a[team=blue] run scoreboard players add #blue defusal 1
execute at @a[team=red] run scoreboard players add #red defusal 1