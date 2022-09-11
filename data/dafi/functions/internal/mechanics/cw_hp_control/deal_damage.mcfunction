execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,RadiusOnUse:-1f,Effects:[{Id:20,Duration:1,Amplifier:5b,ShowParticles:0b},{Id:11,Duration:2,Amplifier:36b,ShowParticles:0b}]}

execute store result score @s cw_hp_old run attribute @s minecraft:generic.max_health base get
scoreboard players operation #temp cw_hp_old = @s cw_hp_current
scoreboard players operation #temp cw_hp_old -= @s hp_dmg

function dafi:internal/mechanics/cw_hp_control/set_hp

#playsound entity.player.hurt master @s ~ ~ ~
effect give @s minecraft:instant_health 1 100 true
advancement grant @s only dafi:hurt