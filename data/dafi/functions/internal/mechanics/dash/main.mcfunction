## real code
execute as @s[scores={dafi.dash.CD=1..}] run scoreboard players remove @s dafi.dash.CD 1
execute as @s[nbt={OnGround:1b}] run function dafi:internal/mechanics/dash/onground
execute as @s[nbt={OnGround:0b},tag=!dafi.dash.primed,scores={dafi.dash.CD=0}] run function dafi:internal/mechanics/dash/midair

execute as @s[nbt={FallFlying:1b}] run function dafi:internal/mechanics/dash/dash

