kill @e[type=minecraft:ender_pearl,limit=1,sort=nearest]
playsound minecraft:entity.illusioner.cast_spell master @a[distance=..50] ~ ~ ~ 1 2
function dafi:class/shade/start_raycast
function dafi:class/shade/hit
scoreboard players reset @s bind
