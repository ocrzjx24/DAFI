## UPDRAFT
execute if score @s dropFeather matches 1 at @s run function dafi:class/saint/old/drop
#execute if score @s feather matches 20 run item replace entity @s armor.chest with elytra{Unbreakable:1,HideFlags:4} 1
#execute if score @s feather matches 62.. run clear @s minecraft:elytra
execute if score @s dropFeather matches 120 run item replace entity @s hotbar.1 with feather{display:{Name:'[{"text":"Wings","italic":false,"bold":true,"color":"white"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,HideFlags:1} 1
execute if score @s dropFeather matches 1..25 at @s positioned ~ ~2.2 ~ run function dafi:class/saint/particle2
#execute if score @s feather matches 100.. run clear @s minecraft:elytra

# increment/reset
execute if score @s dropFeather matches 120.. run scoreboard players reset @s dropFeather
execute if score @s dropFeather matches 1.. run scoreboard players add @s dropFeather 1

## PASSIVE
#execute at @s run function dafi:class/saint/sneak

## HITBOX INCREASE
#execute if score @s feather matches 1..100 at @s run function dafi:class/saint/hitbox

## PARTICLES
#execute at @s run particle minecraft:enchant ~ ~0.2 ~ 0.4 0.1 0.4 0.001 1 normal

## TEXT
#execute if score @s feather matches 199 run title @s actionbar {"text":"\u2605 PREPARE TO ASCEND \u2605","bold":true}

## SOUND
execute if score @s dropFeather matches 119 at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~1000 ~ 1000 1 1

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

## DEATHCHECK
execute if score @s feather matches 1.. if score @s deathcheck matches 1.. run execute if entity @s run scoreboard players set @s feather 199

## PASSIVE

execute if score @s onGroundCheck matches 1.. run scoreboard players set @s onGroundCheck 0
execute if score @s onGroundCheck matches 0 run scoreboard players set @s[nbt={OnGround:1b}] onGroundCheck 1

execute if score @s onGroundCheck matches 1 run clear @s[tag=elytraProcessed] elytra 
execute if score @s onGroundCheck matches 1 run tag @s[tag=elytraProcessed] remove elytraProcessed

execute if score @s onGroundCheck matches 0 run item replace entity @s[tag=!elytraProcessed] armor.chest with elytra
execute if score @s onGroundCheck matches 0 run stopsound @s[tag=!elytraProcessed] * item.armor.equip_elytra
execute if score @s onGroundCheck matches 0 run tag @s[tag=!elytraProcessed] add elytraProcessed

scoreboard players set @s[nbt={FallFlying:1b}] doubleJumpTime 0
execute if score @s doubleJumpTime matches 0 at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~1000 ~ 1000 1.5
execute if score @s doubleJumpTime matches 0 at @s run function dafi:class/saint/particle1
## fix this lmao
# execute if score @s doubleJumpTime matches 0 run effect give @s levitation 1 30 true
execute if score @s doubleJumpTime matches 0 at @s if predicate dafi:is_sneaking run scoreboard players set @s sneakbullshit 1

execute if score @s doubleJumpTime matches 0 unless score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 5000
execute if score @s doubleJumpTime matches 0 unless score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute if score @s doubleJumpTime matches 0 unless score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

execute if score @s doubleJumpTime matches 0 if score @s sneakbullshit matches 1 run scoreboard players set $strength delta.api.launch 3000
execute if score @s doubleJumpTime matches 0 if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute if score @s doubleJumpTime matches 0 if score @s sneakbullshit matches 1 run scoreboard players reset $strength delta.api.launch

execute if score @s doubleJumpTime matches 1 if score @s sneakbullshit matches 1 run scoreboard players set $y delta.api.launch 7500
execute if score @s doubleJumpTime matches 1 if score @s sneakbullshit matches 1 at @s run function dafi:mechanics/bigpapi_delta/api/launch_xyz
execute if score @s doubleJumpTime matches 1 if score @s sneakbullshit matches 1 run scoreboard players reset $y delta.api.launch
execute if score @s doubleJumpTime matches 1 if score @s sneakbullshit matches 1 run scoreboard players reset @s sneakbullshit

execute if score @s doubleJumpTime matches 0 run tag @s add elytraProcessed
execute if score @s doubleJumpTime matches 0 run clear @s elytra
# execute if score @s doubleJumpTime matches 1.. run effect clear @s levitation
execute if score @s doubleJumpTime matches 4.. run scoreboard players reset @s doubleJumpTime
execute if score @s doubleJumpTime matches 0.. run scoreboard players add @s doubleJumpTime 1


