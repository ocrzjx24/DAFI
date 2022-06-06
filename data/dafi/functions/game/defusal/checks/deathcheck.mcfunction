execute at @a[team=blue,scores={defusalDeaths=1}] run scoreboard players remove #blue defusal 1
execute as @a[team=blue,scores={defusalDeaths=1}] run function dafi:game/defusal/events/death
execute at @a[team=red,scores={defusalDeaths=1}] run scoreboard players remove #red defusal 1
execute as @a[team=red,scores={defusalDeaths=1}] run function dafi:game/defusal/events/death