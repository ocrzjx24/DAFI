## TAGGED PLAYER FUNCTIONS
execute as @a[tag=dafi.siege] run function dafi:internal/class/siege/main
execute as @a[tag=dafi.saint] run function dafi:internal/class/saint/main
execute as @a[tag=dafi.slay] run function dafi:internal/class/slay/main
execute as @a[tag=dafi.sting] run function dafi:internal/class/sting/main
execute as @a[tag=dafi.soul] run function dafi:internal/class/soul/main
execute as @a[tag=dafi.steel] run function dafi:internal/class/steel/main
execute as @a[tag=dafi.storm] run function dafi:internal/class/storm/main
execute as @a[tag=dafi.shade] run function dafi:internal/class/shade/main
execute as @a[tag=dafi.swamp] run function dafi:internal/class/swamp/main
execute as @a[tag=dafi.sculk] run function dafi:internal/class/sculk/main
execute as @a[tag=siao] run function dafi:internal/class/siao/main
## OTHER FUNCTIONS
function dafi:internal/class/shade/cast
function dafi:internal/class/sting/grenade
# function dafi:internal/class/soul/lifetime
function dafi:internal/class/steel/lifetime1
function dafi:internal/class/steel/summon2/lifetime2
# function dafi:internal/class/swamp/cast
execute as @e[type=magma_cube,tag=dafi.sting.C4] at @s run function dafi:internal/class/sting/c4/c4lifetime
execute as @e[tag=dafi.sculk.wardenLife] at @s run function dafi:internal/class/sculk/lifetime
execute at @e[type=trident] run function dafi:internal/class/storm/particle/particle5
execute as @e[type=trident,nbt={inGround:1b}] run function dafi:internal/class/storm/strike
execute as @e[type=trident,nbt={DealtDamage:1b}] run function dafi:internal/class/storm/strike
execute as @e[type=fishing_bobber,tag=!dafi.siege.processed] run function dafi:internal/class/siege/bobber/bobberprocess
execute as @e[type=fishing_bobber,tag=dafi.siege.processed] run function dafi:internal/class/siege/bobber/bobber
execute as @e[type=marker,tag=dafi.siege.bobbercheck] run function dafi:internal/class/siege/bobber/bobbercheck
execute as @e[tag=dafi.soul.swap.soul_circle] at @s run function dafi:internal/class/soul/drop/lifetime
execute as @e[tag=dafi.steel.slash] at @s run function dafi:internal/class/steel/slash/lifetime
execute as @e[tag=dafi.shade.slash] at @s run function dafi:internal/class/shade/slash/lifetime
function dafi:internal/class/shade/marked/marked

function dafi:internal/class/saint/summon/lifetime
function dafi:internal/class/saint/raycast/hit

# function dafi:class/siege/lifetime