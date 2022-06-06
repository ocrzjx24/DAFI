kill @e[type=arrow]
scoreboard players add #spread siegeRandom 1
execute if score #spread siegeRandom matches 5.. run scoreboard players set #spread siegeRandom 0
execute if score #spread siegeRandom matches ..0 run scoreboard players set #spread siegeRandom 0
playsound minecraft:entity.firework_rocket.blast master @a[distance=..50] ~ ~ ~ 1 1 1
execute if score @s useSentry matches 26..30 run playsound minecraft:entity.firework_rocket.blast master @a[distance=..50] ~ ~ ~ 1 1.2 1

execute if score #spread siegeRandom matches 0 rotated ~1.7702112151 ~2.9618765178 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~-2.9291947696 ~0.0742122922 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~1.0717224079 ~-3.4520669265 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~-1.1898522251 ~-2.4922570251 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~-1.7702112151 ~-3.9618765178 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~2.9291947696 ~-0.0742122922 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~-1.0717224079 ~3.4520669265 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 0 rotated ~0.1898522251 ~0.4922570251 run function dafi:class/siege/start_raycast

execute if score #spread siegeRandom matches 1 rotated ~0.0559514992 ~3.0015012497 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~-2.7702164097 ~1.0512780779 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~1.0272602715 ~-2.1128652988 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~-2.2147040021 ~-3.2610686462 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~-0.0559514992 ~-2.0015012497 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~2.7702164097 ~-1.0512780779 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~-1.0272602715 ~3.1128652988 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 1 rotated ~0.2147040021 ~0.2610686462 run function dafi:class/siege/start_raycast

execute if score #spread siegeRandom matches 2 rotated ~2.6075090416 ~2.9968242922 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~-0.6424478817 ~3.4256141579 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~2.5740056018 ~-0.2804462442 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~-1.0665782797 ~-3.5049585184 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~-2.6075090416 ~-2.9968242922 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~0.6424478817 ~-3.4256141579 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~-2.5740056018 ~0.2804462442 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 2 rotated ~0.0665782797 ~0.5049585184 run function dafi:class/siege/start_raycast

execute if score #spread siegeRandom matches 3 rotated ~1.2222416562 ~3.6909298968 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~-0.6601581987 ~3.0568842947 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~0.5160559298 ~-2.5967498120 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~-2.8696989618 ~-3.6545557801 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~-1.2222416562 ~-2.6909298968 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~0.6601581987 ~-3.0568842947 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~-0.5160559298 ~2.5967498120 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 3 rotated ~0.8696989618 ~0.6545557801 run function dafi:class/siege/start_raycast

execute if score #spread siegeRandom matches 4 rotated ~2.2425186117 ~3.2758555401 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~-3.8198975469 ~1.6916559460 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~1.0904612086 ~-2.7261691625 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~-2.9670424861 ~-0.4952207275 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~-3.2425186117 ~-2.2758555401 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~3.8198975469 ~-1.6916559460 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~-1.0904612086 ~2.7261691625 run function dafi:class/siege/start_raycast
execute if score #spread siegeRandom matches 4 rotated ~0.9670424861 ~0.4952207275 run function dafi:class/siege/start_raycast

function dafi:class/siege/hit