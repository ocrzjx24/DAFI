execute store result score @s cw_hp_old run attribute @s minecraft:generic.max_health base get
scoreboard players operation #temp cw_hp_old = @s cw_hp_current
scoreboard players operation #temp cw_hp_old -= @s hp_dmg

function dafi:mechanics/cw_hp_control/set_hp

playsound entity.player.hurt master @s ~ ~ ~
effect give @s minecraft:instant_health 1 100
advancement grant @s only dafi:hurt