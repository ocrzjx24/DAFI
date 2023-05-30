## real code
execute if score @s dafi.dash.CD <= #universal dafi.dash.CD unless score @s dafi.dash.CD matches ..0 run scoreboard players remove @s dafi.dash.CD 1

execute store result score @s dafi.dash.rotiation run data get entity @s Rotation[0] 1
execute as @s[nbt={OnGround:1b},tag=!dafi.dash_reset.exempt] run function dafi:internal/mechanics/dash/onground
#    execute as @s[tag=!dafi.dash_reset.exempt] at @s if block ~ ~ ~-0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~ ~ ~-1 align z positioned ~ ~-1 ~0.8 run tag @s remove dafi.dash.primed
#    execute as @s[tag=!dafi.dash_reset.exempt] at @s if block ~ ~ ~0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~ ~ ~1 align z positioned ~ ~-1 ~0.2 run tag @s remove dafi.dash.primed
#    execute as @s[tag=!dafi.dash_reset.exempt] at @s if block ~-0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~-1 ~ ~ align x positioned ~0.8 ~-1 ~ run tag @s remove dafi.dash.primed
#    execute as @s[tag=!dafi.dash_reset.exempt] at @s if block ~0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~1 ~ ~ align x positioned ~0.2 ~-1 ~ run tag @s remove dafi.dash.primed
tag @s[tag=dafi.dash_reset.exempt] remove dafi.dash_reset.exempt
execute as @s[nbt={OnGround:0b},tag=!dafi.dash.primed,tag=!dafi.dash.exempt] if score @s dafi.dash.CD matches ..0 at @s if block ~ ~ ~-0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/midair
execute as @s[nbt={OnGround:0b},tag=!dafi.dash.primed,tag=!dafi.dash.exempt] if score @s dafi.dash.CD matches ..0 at @s if block ~ ~ ~0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/midair
execute as @s[nbt={OnGround:0b},tag=!dafi.dash.primed,tag=!dafi.dash.exempt] if score @s dafi.dash.CD matches ..0 at @s if block ~0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/midair
execute as @s[nbt={OnGround:0b},tag=!dafi.dash.primed,tag=!dafi.dash.exempt] if score @s dafi.dash.CD matches ..0 at @s if block ~-0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/midair
#execute as @s[nbt={FallFlying:1b}] if score @s dafi.dash.CD matches ..0 run execute store result score @s dafi.dash.rotation run data get entity @s Rotation[0] 1

#execute as @s[nbt={FallFlying:1b},tag=!dafi.dash.primed] if score @s dafi.dash.CD matches ..0 at @s if block ~ ~ ~-0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/wallkick
#execute as @s[nbt={FallFlying:1b},tag=!dafi.dash.primed] if score @s dafi.dash.CD matches ..0 at @s if block ~ ~ ~0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/wallkick
#execute as @s[nbt={FallFlying:1b},tag=!dafi.dash.primed] if score @s dafi.dash.CD matches ..0 at @s if block ~0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/wallkick
#execute as @s[nbt={FallFlying:1b},tag=!dafi.dash.primed] if score @s dafi.dash.CD matches ..0 at @s if block ~-0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air run function dafi:internal/mechanics/dash/wallkick

execute as @s[nbt={FallFlying:1b},tag=!dafi.dash.primed] if score @s dafi.dash.CD matches ..0 run function dafi:internal/mechanics/dash/wallkick

