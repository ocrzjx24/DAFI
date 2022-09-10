data modify entity @s Pos set from storage death Pos

execute at @s run summon armor_stand ~ ~ ~ {Tags:["dafi.ball"],Invisible:1b,Small:1b,Passengers:[{id:"minecraft:slime",Tags:["dafi.ball"],Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,Size:1,NoAI:1,CustomName:'{"text":"ball"}'}]}
execute at @s positioned ~ ~0.5 ~ run particle block redstone_block ~ ~ ~ 0 0 0 1 30

kill @s