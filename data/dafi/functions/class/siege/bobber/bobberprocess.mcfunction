## BOBBER
say rod cast
execute at @s store result score @s sbsid run scoreboard players get @a[tag=siege,sort=nearest,limit=1] sbsid
# data modify entity @s Motion[1] merge from entity @s Motion[1]
# data modify entity @s Motion[0] set value 0.0
# data modify entity @s Motion[1] set value 0.0
# data modify entity @s Motion[2] set value 0.0
tag @s add dafi.siege.processed