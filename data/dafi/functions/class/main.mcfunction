## TAGGED PLAYER FUNCTIONS
execute as @a[tag=siege] run function dafi:class/siege/main
execute as @a[tag=saint] run function dafi:class/saint/main
execute as @a[tag=slay] run function dafi:class/slay/main
execute as @a[tag=sting] run function dafi:class/sting/main
execute as @a[tag=soul] run function dafi:class/soul/main
execute as @a[tag=steel] run function dafi:class/steel/main
execute as @a[tag=storm] run function dafi:class/storm/main
execute as @a[tag=shade] run function dafi:class/shade/main
execute as @a[tag=swamp] run function dafi:class/swamp/main
execute as @a[tag=sculk] run function dafi:class/sculk/main
## OTHER FUNCTIONS
function dafi:class/shade/cast
function dafi:class/sting/grenade
function dafi:class/soul/lifetime
function dafi:class/steel/lifetime
function dafi:class/swamp/cast
execute as @e[tag=rawr] run function dafi:class/swamp/rawr
execute as @e[type=item,tag=C4] at @s run function dafi:class/sting/c4/c4lifetime
execute as @e[tag=wardenLife] at @s run function dafi:class/sculk/lifetime
execute at @e[type=trident] run function dafi:class/storm/particle/particle5
# function dafi:class/siege/lifetime