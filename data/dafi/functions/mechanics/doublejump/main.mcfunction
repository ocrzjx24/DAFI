execute as @a[scores={onGroundCheck=1..}] run scoreboard players set @s onGroundCheck 0

execute as @a[scores={onGroundCheck=0}] run scoreboard players set @s[nbt={OnGround:1b}] onGroundCheck 1
execute as @a[scores={onGroundCheck=1}] run clear @s[tag=elytraProcessed] elytra 
execute as @a[scores={onGroundCheck=1}] run tag @s[tag=elytraProcessed] remove elytraProcessed

execute as @a[scores={onGroundCheck=0}] run item replace entity @s[tag=!elytraProcessed] armor.chest with elytra
execute as @a[scores={onGroundCheck=0}] run stopsound @s[tag=!elytraProcessed] * item.armor.equip_elytra
execute as @a[scores={onGroundCheck=0}] run tag @s[tag=!elytraProcessed] add elytraProcessed

scoreboard players set @a[nbt={FallFlying:1b}] doubleJumpTime 0
execute as @a[scores={doubleJumpTime=0}] at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~1000 ~ 1000 1.5
execute as @a[scores={doubleJumpTime=0}] at @s run function dafi:class/saint/particle1
## fix this lmao
execute as @a[scores={doubleJumpTime=0},tag=saint] at @s if predicate dafi:is_sneaking run scoreboard players set @s sneakbullshit 1

execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 5000
execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 3000
execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players set $y delta.api.launch 7500
execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_xyz
execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players reset $y delta.api.launch

execute as @a[scores={doubleJumpTime=1},tag=saint] run scoreboard players reset @s sneakbullshit

execute as @a[scores={doubleJumpTime=0}] run tag @s add elytraProcessed
execute as @a[scores={doubleJumpTime=0}] run clear @s elytra
execute as @a[scores={doubleJumpTime=1..}] run scoreboard players reset @s doubleJumpTime
execute as @a[scores={doubleJumpTime=0..}] run scoreboard players add @s doubleJumpTime 1
