tag @s add dafi.balling
playsound minecraft:item.armor.equip_turtle master @s ~ ~1000 ~ 1000 1
function dafi:internal/game/ball/scoring/possession
scoreboard players set @s dafi.glow.duration 2147483647
#item replace entity @s weapon.mainhand from entity @e[tag=dafi.ball,type=armor_stand,limit=1,sort=nearest] weapon.mainhand
clear @s minecraft:note_block
item replace entity @s hotbar.2 with minecraft:note_block
tp @e[tag=dafi.ball] 0 -1000 0
advancement revoke @s only dafi:armorstand_interact