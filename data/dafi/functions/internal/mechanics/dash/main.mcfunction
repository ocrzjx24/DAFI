## real code
execute if score @s dafi.dash.CD <= #universal dafi.dash.CD unless score @s dafi.dash.CD matches ..0 run scoreboard players remove @s dafi.dash.CD 1


execute as @s[nbt={OnGround:1b},tag=!dafi.dash_reset.exempt] run function dafi:internal/mechanics/dash/onground
tag @s[tag=dafi.dash_reset.exempt] remove dafi.dash_reset.exempt
execute as @s[nbt={OnGround:0b},tag=!dafi.dash.primed,tag=!dafi.dash.exempt] if score @s dafi.dash.CD matches ..0 run function dafi:internal/mechanics/dash/midair

execute as @s[nbt={FallFlying:1b}] run function dafi:internal/mechanics/dash/dash

