## real code
execute as @a[scores={onGroundCheck=1..}] run scoreboard players set @s onGroundCheck 0

execute as @a[scores={onGroundCheck=0}] run scoreboard players set @s[nbt={OnGround:1b}] onGroundCheck 1
execute as @a[scores={onGroundCheck=1}] run clear @s[tag=elytraProcessed] elytra 
execute as @a[scores={onGroundCheck=1}] run tag @s[tag=elytraProcessed] remove elytraProcessed

execute as @a[scores={onGroundCheck=0}] run item replace entity @s[tag=!elytraProcessed,scores={dashCD=0}] armor.chest with elytra
execute as @a[scores={onGroundCheck=0}] run stopsound @s[tag=!elytraProcessed,scores={dashCD=0}] * item.armor.equip_elytra
execute as @a[scores={onGroundCheck=0}] run tag @s[tag=!elytraProcessed] add elytraProcessed

execute as @a run scoreboard players set @a[nbt={FallFlying:1b}] doubleJumpTime 0 
execute as @a[scores={doubleJumpTime=0}] run scoreboard players set @s dashCD 40

title @a[scores={dashCD=40}] actionbar ["",{"text":">>>","bold":true,"color":"gold"},{"text":" DASH","bold":true,"color":"green"},{"text":" <<<","bold":true,"color":"gold"}]

## i want to get railed by blaidd please please please (this code is so bad)

xp set @a[scores={dashCD=1..40}] 62 levels

xp set @a[scores={dashCD=40}] 0 points
xp set @a[scores={dashCD=39}] 10 points
xp set @a[scores={dashCD=38}] 20 points
xp set @a[scores={dashCD=37}] 30 points
xp set @a[scores={dashCD=36}] 40 points
xp set @a[scores={dashCD=35}] 50 points
xp set @a[scores={dashCD=34}] 60 points
xp set @a[scores={dashCD=33}] 70 points
xp set @a[scores={dashCD=32}] 80 points
xp set @a[scores={dashCD=31}] 90 points
xp set @a[scores={dashCD=30}] 100 points
xp set @a[scores={dashCD=29}] 110 points
xp set @a[scores={dashCD=28}] 120 points
xp set @a[scores={dashCD=27}] 130 points
xp set @a[scores={dashCD=26}] 140 points
xp set @a[scores={dashCD=25}] 150 points
xp set @a[scores={dashCD=24}] 160 points
xp set @a[scores={dashCD=23}] 170 points
xp set @a[scores={dashCD=22}] 180 points
xp set @a[scores={dashCD=21}] 190 points
xp set @a[scores={dashCD=20}] 200 points
xp set @a[scores={dashCD=19}] 210 points
xp set @a[scores={dashCD=18}] 220 points
xp set @a[scores={dashCD=17}] 230 points
xp set @a[scores={dashCD=16}] 240 points
xp set @a[scores={dashCD=15}] 250 points
xp set @a[scores={dashCD=14}] 260 points
xp set @a[scores={dashCD=13}] 270 points
xp set @a[scores={dashCD=12}] 280 points
xp set @a[scores={dashCD=11}] 290 points
xp set @a[scores={dashCD=10}] 300 points
xp set @a[scores={dashCD=9}] 310 points
xp set @a[scores={dashCD=8}] 320 points
xp set @a[scores={dashCD=7}] 330 points
xp set @a[scores={dashCD=6}] 340 points
xp set @a[scores={dashCD=5}] 350 points
xp set @a[scores={dashCD=4}] 360 points
xp set @a[scores={dashCD=3}] 370 points
xp set @a[scores={dashCD=2}] 380 points
xp set @a[scores={dashCD=1}] 390 points

xp set @a[scores={dashCD=1..40}] 0 levels

xp set @a[scores={dashCD=0}] 0 points
xp set @a[scores={dashCD=0}] 1 levels

title @a[scores={dashCD=1}] actionbar ["",{"text":">>>","bold":true,"color":"gray"},{"text":" DASH READY","bold":true},{"text":"<<<","bold":true,"color":"gray"}]

# scoreboard players reset @a[scores={dashCD=0}] dashCD

execute as @a[scores={dashCD=1..}] run scoreboard players remove @s dashCD 1

## flap

execute as @a[scores={doubleJumpTime=0}] at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~1000 ~ 1000 1.5
execute as @a[scores={doubleJumpTime=0}] at @s run function dafi:class/saint/particle1
execute as @a[scores={doubleJumpTime=0}] at @s if predicate dafi:is_sneaking run scoreboard players set @s sneakbullshit 1

execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 5000
execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 3000
execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players set $y delta.api.launch 7500
execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_xyz
execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players reset $y delta.api.launch

execute as @a[scores={doubleJumpTime=1}] run scoreboard players reset @s sneakbullshit

execute as @a[scores={doubleJumpTime=0}] run tag @s add elytraProcessed
execute as @a[scores={doubleJumpTime=0}] run clear @s elytra
execute as @a[scores={doubleJumpTime=1..}] run scoreboard players reset @s doubleJumpTime
execute as @a[scores={doubleJumpTime=0..}] run scoreboard players add @s doubleJumpTime 1
