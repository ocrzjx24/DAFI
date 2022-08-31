xp set @a[scores={dafi.dash.CD=1..40}] 62 levels

xp set @a[scores={dafi.dash.CD=40}] 0 points
xp set @a[scores={dafi.dash.CD=39}] 10 points
xp set @a[scores={dafi.dash.CD=38}] 20 points
xp set @a[scores={dafi.dash.CD=37}] 30 points
xp set @a[scores={dafi.dash.CD=36}] 40 points
xp set @a[scores={dafi.dash.CD=35}] 50 points
xp set @a[scores={dafi.dash.CD=34}] 60 points
xp set @a[scores={dafi.dash.CD=33}] 70 points
xp set @a[scores={dafi.dash.CD=32}] 80 points
xp set @a[scores={dafi.dash.CD=31}] 90 points
xp set @a[scores={dafi.dash.CD=30}] 100 points
xp set @a[scores={dafi.dash.CD=29}] 110 points
xp set @a[scores={dafi.dash.CD=28}] 120 points
xp set @a[scores={dafi.dash.CD=27}] 130 points
xp set @a[scores={dafi.dash.CD=26}] 140 points
xp set @a[scores={dafi.dash.CD=25}] 150 points
xp set @a[scores={dafi.dash.CD=24}] 160 points
xp set @a[scores={dafi.dash.CD=23}] 170 points
xp set @a[scores={dafi.dash.CD=22}] 180 points
xp set @a[scores={dafi.dash.CD=21}] 190 points
xp set @a[scores={dafi.dash.CD=20}] 200 points
xp set @a[scores={dafi.dash.CD=19}] 210 points
xp set @a[scores={dafi.dash.CD=18}] 220 points
xp set @a[scores={dafi.dash.CD=17}] 230 points
xp set @a[scores={dafi.dash.CD=16}] 240 points
xp set @a[scores={dafi.dash.CD=15}] 250 points
xp set @a[scores={dafi.dash.CD=14}] 260 points
xp set @a[scores={dafi.dash.CD=13}] 270 points
xp set @a[scores={dafi.dash.CD=12}] 280 points
xp set @a[scores={dafi.dash.CD=11}] 290 points
xp set @a[scores={dafi.dash.CD=10}] 300 points
xp set @a[scores={dafi.dash.CD=9}] 310 points
xp set @a[scores={dafi.dash.CD=8}] 320 points
xp set @a[scores={dafi.dash.CD=7}] 330 points
xp set @a[scores={dafi.dash.CD=6}] 340 points
xp set @a[scores={dafi.dash.CD=5}] 350 points
xp set @a[scores={dafi.dash.CD=4}] 360 points
xp set @a[scores={dafi.dash.CD=3}] 370 points
xp set @a[scores={dafi.dash.CD=2}] 380 points
xp set @a[scores={dafi.dash.CD=1}] 390 points

xp set @a[scores={dafi.dash.CD=1..40}] 0 levels

xp set @a[scores={dafi.dash.CD=0}] 0 points
xp set @a[scores={dafi.dash.CD=0}] 1 levels

## real code
execute as @a[scores={dafi.dash.onGroundCheck=1..}] run scoreboard players reset @s dafi.dash.onGroundCheck

execute as @a unless score @s dafi.dash.onGroundCheck matches 1 run scoreboard players set @s[nbt={OnGround:1b}] dafi.dash.onGroundCheck 1
execute as @a[scores={dafi.dash.onGroundCheck=1}] run clear @s[tag=dafi.dash.elytraProcessed] elytra 
execute as @a[scores={dafi.dash.onGroundCheck=1}] run tag @s[tag=dafi.dash.elytraProcessed] remove dafi.dash.elytraProcessed

execute as @a unless score @s dafi.dash.onGroundCheck matches 1 run item replace entity @s[scores={dafi.dash.CD=0}] armor.chest with elytra
execute as @a unless score @s dafi.dash.onGroundCheck matches 1 run stopsound @s[scores={dafi.dash.CD=0}] * item.armor.equip_elytra
execute as @a unless score @s dafi.dash.onGroundCheck matches 1 run tag @s[tag=!dafi.dash.elytraProcessed] add dafi.dash.elytraProcessed

execute as @a run scoreboard players set @a[nbt={FallFlying:1b}] dafi.dash.time 0 
execute as @a[scores={dafi.dash.time=0}] run scoreboard players set @s dafi.dash.CD 40

title @a[scores={dafi.dash.CD=40}] actionbar ["",{"text":">>>","bold":true,"color":"gold"},{"text":" DASH","bold":true,"color":"green"},{"text":" <<<","bold":true,"color":"gold"}]
title @a[scores={dafi.dash.CD=1}] actionbar ["",{"text":">>>","bold":true,"color":"gray"},{"text":" DASH READY","bold":true},{"text":" <<<","bold":true,"color":"gray"}]

# scoreboard players reset @a[scores={dashCD=0}] dashCD

execute as @a[scores={dafi.dash.CD=1..}] run scoreboard players remove @s dafi.dash.CD 1

## flap

execute as @a[scores={dafi.dash.time=0}] at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~1000 ~ 1000 1.5
execute as @a[scores={dafi.dash.time=0}] at @s run function dafi:internal/mechanics/dash/particle1

# execute as @a[scores={doubleJumpTime=0},tag=saint] at @s if predicate dafi:is_sneaking run scoreboard players set @s sneakbullshit 1

# execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 5000
# execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 at @s run function dafi:mechanics/api/launch_looking
# execute as @a[scores={doubleJumpTime=0}] unless score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

# execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 3000
# execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/api/launch_looking
# execute as @a[scores={doubleJumpTime=0},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

# execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players set $y delta.api.launch 7500
# execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/api/launch_xyz
# execute as @a[scores={doubleJumpTime=1},tag=saint] if score @s sneakbullshit matches 1 run scoreboard players reset $y delta.api.launch

execute as @a[scores={dafi.dash.time=0},tag=dafi.crouched] run scoreboard players set @s delta.addition.magnitude 12500
execute as @a[scores={dafi.dash.time=0},tag=dafi.crouched] at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
# execute as @a[scores={dafi.dash.time=0},tag=!dafi.saint] store result score @s dafi.dash.y run data get entity @s Motion[1] -10000
execute as @a[scores={dafi.dash.time=0},tag=dafi.crouched] run scoreboard players set @s delta.addition.magnitude 4000
# execute as @a[scores={dafi.dash.time=0}] run scoreboard players operation @s delta.addition.magnitude += @s dafi.dash.y
execute as @a[scores={dafi.dash.time=0},tag=dafi.crouched] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion
execute as @a[scores={dafi.dash.time=0},tag=dafi.crouched] run tag @s add dafi.slide.exempt

execute as @a[scores={dafi.dash.time=0},tag=!dafi.slide.exempt] run scoreboard players set @s delta.addition.magnitude 6000
execute as @a[scores={dafi.dash.time=0},tag=!dafi.slide.exempt] at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
# execute as @a[scores={dafi.dash.time=0},tag=!dafi.saint] store result score @s dafi.dash.y run data get entity @s Motion[1] -10000
execute as @a[scores={dafi.dash.time=0},tag=!dafi.slide.exempt] run scoreboard players set @s delta.addition.magnitude 4000
# execute as @a[scores={dafi.dash.time=0}] run scoreboard players operation @s delta.addition.magnitude += @s dafi.dash.y
execute as @a[scores={dafi.dash.time=0},tag=!dafi.slide.exempt] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion

# execute as @a[scores={doubleJumpTime=1}] run scoreboard players reset @s sneakbullshit

execute as @a[scores={dafi.dash.time=0}] run tag @s add dafi.dash.elytraProcessed
execute as @a[scores={dafi.dash.time=0}] run clear @s elytra
execute as @a[scores={dafi.dash.time=1..}] run scoreboard players reset @s dafi.dash.time
execute as @a[scores={dafi.dash.time=0..}] run scoreboard players add @s dafi.dash.time 1

tag @a remove dafi.slide.exempt
