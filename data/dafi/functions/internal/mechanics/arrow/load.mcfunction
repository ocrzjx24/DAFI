scoreboard objectives add dafi.arrow.SID dummy

scoreboard objectives add dafi.arrow.x dummy
scoreboard objectives add dafi.arrow.y dummy
scoreboard objectives add dafi.arrow.z dummy

scoreboard objectives add dafi.arrow.temp dummy

scoreboard objectives add dafi.arrow.lifetime dummy

scoreboard objectives add dafi.arrow.ammo dummy
    execute unless score .saint dafi.arrow.ammo matches 0.. run scoreboard players set .saint dafi.arrow.ammo 6
    execute unless score .sculk dafi.arrow.ammo matches 0.. run scoreboard players set .sculk dafi.arrow.ammo 6
    execute unless score .shade dafi.arrow.ammo matches 0.. run scoreboard players set .shade dafi.arrow.ammo 2
    execute unless score .siao dafi.arrow.ammo matches 0.. run scoreboard players set .siao dafi.arrow.ammo 6
    execute unless score .slay dafi.arrow.ammo matches 0.. run scoreboard players set .slay dafi.arrow.ammo 6
    execute unless score .soul dafi.arrow.ammo matches 0.. run scoreboard players set .soul dafi.arrow.ammo 6
    execute unless score .steel dafi.arrow.ammo matches 0.. run scoreboard players set .steel dafi.arrow.ammo 6
    execute unless score .sting dafi.arrow.ammo matches 0.. run scoreboard players set .sting dafi.arrow.ammo 6
    execute unless score .storm dafi.arrow.ammo matches 0.. run scoreboard players set .storm dafi.arrow.ammo 6
    execute unless score .swamp dafi.arrow.ammo matches 0.. run scoreboard players set .swamp dafi.arrow.ammo 6
scoreboard objectives add dafi.arrow.reload_time dummy
    execute unless score .saint dafi.arrow.reload_time matches 0.. run scoreboard players set .saint dafi.arrow.reload_time 15
    execute unless score .sculk dafi.arrow.reload_time matches 0.. run scoreboard players set .sculk dafi.arrow.reload_time 15
    execute unless score .shade dafi.arrow.reload_time matches 0.. run scoreboard players set .shade dafi.arrow.reload_time 40
    execute unless score .siao dafi.arrow.reload_time matches 0.. run scoreboard players set .siao dafi.arrow.reload_time 15
    execute unless score .slay dafi.arrow.reload_time matches 0.. run scoreboard players set .slay dafi.arrow.reload_time 15
    execute unless score .soul dafi.arrow.reload_time matches 0.. run scoreboard players set .soul dafi.arrow.reload_time 15
    execute unless score .steel dafi.arrow.reload_time matches 0.. run scoreboard players set .steel dafi.arrow.reload_time 15
    execute unless score .sting dafi.arrow.reload_time matches 0.. run scoreboard players set .sting dafi.arrow.reload_time 15
    execute unless score .storm dafi.arrow.reload_time matches 0.. run scoreboard players set .storm dafi.arrow.reload_time 15
    execute unless score .swamp dafi.arrow.reload_time matches 0.. run scoreboard players set .swamp dafi.arrow.reload_time 15
scoreboard objectives add dafi.arrow.CD dummy
    execute unless score .saint dafi.arrow.CD matches 0.. run scoreboard players set .saint dafi.arrow.CD 15
    execute unless score .sculk dafi.arrow.CD matches 0.. run scoreboard players set .sculk dafi.arrow.CD 15
    execute unless score .shade dafi.arrow.CD matches 0.. run scoreboard players set .shade dafi.arrow.CD 10
    execute unless score .siao dafi.arrow.CD matches 0.. run scoreboard players set .siao dafi.arrow.CD 15
    execute unless score .slay dafi.arrow.CD matches 0.. run scoreboard players set .slay dafi.arrow.CD 15
    execute unless score .soul dafi.arrow.CD matches 0.. run scoreboard players set .soul dafi.arrow.CD 15
    execute unless score .steel dafi.arrow.CD matches 0.. run scoreboard players set .steel dafi.arrow.CD 15
    execute unless score .sting dafi.arrow.CD matches 0.. run scoreboard players set .sting dafi.arrow.CD 15
    execute unless score .storm dafi.arrow.CD matches 0.. run scoreboard players set .storm dafi.arrow.CD 15
    execute unless score .swamp dafi.arrow.CD matches 0.. run scoreboard players set .swamp dafi.arrow.CD 15