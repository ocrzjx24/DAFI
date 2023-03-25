execute at @s positioned ~ ~0.5 ~ as @e[type=marker,tag=dafi.soul.spin.counter_clockwise] rotated as @s run tp @s ~ ~ ~ ~-6 ~
execute at @e[type=marker,tag=dafi.soul.spin.counter_clockwise] run function dafi:internal/class/soul/swap/particle1
#execute at @e[type=marker,tag=dafi.soul.spin.counter_clockwise] run function dafi:internal/class/soul/swap/particle3
#execute at @e[type=marker,tag=dafi.soul.spin.counter_clockwise] run function dafi:internal/class/soul/swap/particle5

execute at @s positioned ~ ~0.5 ~ as @e[type=marker,tag=dafi.soul.spin.clockwise] rotated as @s run tp @s ~ ~ ~ ~7 ~
execute at @e[type=marker,tag=dafi.soul.spin.clockwise] run function dafi:internal/class/soul/swap/particle2
#execute at @e[type=marker,tag=dafi.soul.spin.clockwise] run function dafi:internal/class/soul/swap/particle4

#execute at @e[type=marker,tag=dafi.soul.spin] positioned ^ ^ ^4 as @e[type=marker,tag=dafi.soul.spin.2] rotated as @s run tp @s ~ ~ ~ ~-2 ~
#execute at @e[type=marker,tag=dafi.soul.spin.2] run particle heart ^ ^ ^2 0 0 0 0 1
#execute at @e[type=marker,tag=dafi.soul.spin.2] run particle heart ^ ^ ^-2 0 0 0 0 1
#execute at @e[type=marker,tag=dafi.soul.spin.2] run particle heart ^2 ^ ^ 0 0 0 0 1
#execute at @e[type=marker,tag=dafi.soul.spin.2] run particle heart ^-2 ^ ^ 0 0 0 0 1
