#effect give @s[nbt={OnGround:0b}] slow_falling 1 0 true
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1.5
#playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1
effect give @s[] levitation 1 0 true
execute unless entity @s[predicate=dafi:is_sprinting] if entity @s[nbt={OnGround:0b}] run scoreboard players set @s delta.addition.magnitude 15000
execute if entity @s[predicate=dafi:is_sprinting] if entity @s[nbt={OnGround:0b}] run scoreboard players set @s delta.addition.magnitude 10000
execute unless entity @s[predicate=dafi:is_sprinting] if entity @s[nbt={OnGround:1b}] run scoreboard players set @s delta.addition.magnitude 25000
execute if entity @s[predicate=dafi:is_sprinting] if entity @s[nbt={OnGround:1b}] run scoreboard players set @s delta.addition.magnitude 25000

#scoreboard players set @s delta.addition.magnitude 6000
#execute at @s rotated ~ 0 run function dafi:mechanics/bigpapi_delta/addition/add_motion
#scoreboard players set @s delta.addition.magnitude 2000
#execute at @s rotated 0 -90 run function dafi:mechanics/bigpapi_delta/addition/add_motion
#scoreboard players set @s[nbt={OnGround:0b}] delta.addition.magnitude 8000
execute at @s rotated ~ 0 run function dafi:mechanics/bigpapi_delta/addition/add_motion
scoreboard players set @s lwcLife 1 