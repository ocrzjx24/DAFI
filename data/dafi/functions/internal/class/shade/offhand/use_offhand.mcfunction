##> dafi:internal/class/shade/chargecheck
# checks if player is charging
#
# callers:
# > 
execute if score @s dafi.shade.useWarpedFungusOnAStick matches 1.. if score @s dafi.shade.use.cooldown matches 0 run tag @s add dafi.shade.slash.initiated
execute if score @s dafi.shade.useWarpedFungusOnAStick matches 1.. run scoreboard players reset @s dafi.shade.useWarpedFungusOnAStick
execute if score @s dafi.shade.use.cooldown matches 1.. run scoreboard players remove @s dafi.shade.use.cooldown 1


execute if entity @s[tag=dafi.shade.slash.initiated] run clear @s warped_fungus_on_a_stick{offhand:1}
execute if entity @s[tag=dafi.shade.slash.initiated] run scoreboard players add @s dafi.shade.attackPattern 1
execute if score @s dafi.shade.attackPattern matches 3.. run scoreboard players set @s dafi.shade.attackPattern 1
execute if entity @s[tag=dafi.shade.slash.initiated] run scoreboard players set @s dafi.shade.attackReset 20

execute if entity @s[tag=dafi.shade.primed,tag=dafi.shade.slash.initiated] at @s run function dafi:internal/class/shade/summon
execute if entity @s[tag=dafi.shade.primed,tag=dafi.shade.slash.initiated] run tag @s remove dafi.shade.primed

execute if entity @s[team=blue,tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 at @s run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.1","dafi.blue","dafi.this"]}
execute if entity @s[team=red,tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 at @s run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.1","dafi.red","dafi.this"]}
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 run scoreboard players set @s delta.addition.magnitude -500
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 at @s run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 at @s run tp @e[tag=dafi.this] @s
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 run tag @e[tag=dafi.this] remove dafi.this
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 1 run scoreboard players set @s dafi.shade.use.cooldown 1


execute if entity @s[team=blue,tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 at @s run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.2","dafi.blue","dafi.this"]}
execute if entity @s[team=red,tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 at @s run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.2","dafi.red","dafi.this"]}
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 run scoreboard players set @s delta.addition.magnitude -500
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 at @s run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 at @s run tp @e[tag=dafi.this] @s
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 run tag @e[tag=dafi.this] remove dafi.this
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 2 run scoreboard players set @s dafi.shade.use.cooldown 8

execute if entity @s[team=blue,tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 at @s run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.5","dafi.blue","dafi.this"]}
execute if entity @s[team=red,tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 at @s run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.5","dafi.red","dafi.this"]}
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 run scoreboard players set @s delta.addition.magnitude 1000
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 at @s run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 at @s run tp @e[tag=dafi.this] @s
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 at @s rotated ~ 0 run tp @e[tag=dafi.this] ^ ^ ^1
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 run tag @e[tag=dafi.this] remove dafi.this
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1
execute if entity @s[tag=dafi.shade.slash.initiated] if score @s dafi.shade.attackPattern matches 3 run scoreboard players set @s dafi.shade.use.cooldown 10

execute if entity @s[tag=dafi.shade.slash.initiated] run tag @s remove dafi.shade.slash.initiated
execute if score @s dafi.shade.attackReset matches 0 run scoreboard players set @s dafi.shade.attackPattern 0
execute if score @s dafi.shade.attackReset matches 1.. run scoreboard players remove @s dafi.shade.attackReset 1

execute if score @s dafi.shade.use.cooldown matches 0 if score @s dafi.shade.attackPattern matches ..3 run tag @s remove dafi.offhandProcessed
execute if score @s dafi.shade.use.cooldown matches 0 if score @s dafi.shade.attackPattern matches ..3 run scoreboard players set @s dafi.offhandReady 1
#execute if score @s dafi.shade.use.cooldown matches ..1 if score @s dafi.shade.attackPattern matches ..3 run scoreboard players set @s dafi.shade.use.cooldown 0



#execute if score @s dafi.shade.use.cooldown matches 2 if score @s dafi.shade.attackPattern matches 1 at @s positioned ^ ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 2 if score @s dafi.shade.attackPattern matches 1 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 4 if score @s dafi.shade.attackPattern matches 1 at @s positioned ^ ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash5
#execute if score @s dafi.shade.use.cooldown matches 4 if score @s dafi.shade.attackPattern matches 1 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

#execute if score @s dafi.shade.use.cooldown matches 2 if score @s dafi.shade.attackPattern matches 2 at @s positioned ^ ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash9
#execute if score @s dafi.shade.use.cooldown matches 2 if score @s dafi.shade.attackPattern matches 2 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 4 if score @s dafi.shade.attackPattern matches 2 at @s positioned ^ ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash10
#execute if score @s dafi.shade.use.cooldown matches 4 if score @s dafi.shade.attackPattern matches 2 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 3 at @s positioned ^-1 ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

######


#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 3 at @s run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 3 at @s run function dafi:internal/class/shade/slash/slash_library/slash5
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 4 at @s run function dafi:internal/class/shade/slash/slash_library/slash10
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 4 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 5 at @s positioned ^-1 ^ ^ run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 5 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 2 if score @s dafi.shade.attackPattern matches 5 at @s positioned ^ ^ ^ run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 2 if score @s dafi.shade.attackPattern matches 5 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 5 at @s positioned ^1 ^ ^ run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 5 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2

#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 8 at @s positioned ^ ^ ^ run function dafi:internal/class/shade/slash/slash_library/slash11
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 8 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.8

#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s positioned ^ ^ ^ run function dafi:internal/class/shade/summon
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 7 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 7 at @s anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^1 0 0 0 1 3 normal
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound minecraft:block.soul_sand.place master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 run scoreboard players set @s delta.addition.magnitude 2000
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 run scoreboard players set @s delta.addition.magnitude 8000
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s rotated as @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
######

#execute if score @s dafi.shade.use.cooldown matches 4 if score @s dafi.shade.attackPattern matches 3 at @s positioned ^ ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 4 if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 5 if score @s dafi.shade.attackPattern matches 3 at @s positioned ^1 ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash8
#execute if score @s dafi.shade.use.cooldown matches 5 if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 5 if score @s dafi.shade.attackPattern matches 3 at @s positioned ^ ^ ^0.5 run function dafi:internal/class/shade/slash/slash_library/slash11
#execute if score @s dafi.shade.use.cooldown matches 5 if score @s dafi.shade.attackPattern matches 3 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.8

#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s positioned ^ ^ ^ run function dafi:internal/class/shade/summon
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 7 run effect give @s speed 3 4
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 7 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
#execute if score @s dafi.shade.use.cooldown matches 1 if score @s dafi.shade.attackPattern matches 7 at @s anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^1 0 0 0 1 3 normal
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound minecraft:block.soul_sand.place master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 run scoreboard players set @s delta.addition.magnitude 2000
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 run scoreboard players set @s delta.addition.magnitude 8000
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s rotated as @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion

#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches 7 at @s run playsound minecraft:entity.allay.ambient_with_item master @a ~ ~ ~ 1 2


# scoreboard players add @s[scores={chargeCheck=1}] charge 1
# scoreboard players set @s[scores={chargeCheck=0,charge=1..14}] charge 0
# scoreboard players set @s[scores={chargeCheck=1}] chargeCheck 0
#execute if entity @s[advancements={dafi:eye=true}] run scoreboard players add @s dafi.shade.use.cooldown 1
#execute if entity @s[advancements={dafi:eye=true}] run clear @s ender_eye
#execute if score @s dafi.shade.use.cooldown matches 3 if score @s dafi.shade.attackPattern matches ..8 run item replace entity @s weapon.offhand with ender_eye{offhand:1,display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
#execute if score @s dafi.shade.use.cooldown matches 20 if score @s dafi.shade.attackPattern matches 7 run item replace entity @s weapon.offhand with ender_eye{offhand:1,display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1

####
#execute if score @s dafi.shade.charge matches 1 run tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"RMB","color":"white"},{"text":")","color":"#33ffff"}]
#execute if score @s dafi.shade.charge matches 1 run clear @s ender_eye
#execute if score @s dafi.shade.charge matches 1 run scoreboard players reset @s dafi.offhandReady
#execute if score @s dafi.shade.charge matches 1 run item replace entity @s armor.feet with minecraft:air
#execute if score @s dafi.shade.charge matches 1 run item replace entity @s armor.head with minecraft:air
#execute if score @s dafi.shade.charge matches 1 run effect give @s minecraft:invisibility 999999 0 true
#execute if score @s dafi.shade.charge matches 1 run effect give @s speed 999999 8 true
#execute if score @s dafi.shade.charge matches 1 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.83
#execute if score @s dafi.shade.charge matches 1 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.79
#execute if score @s dafi.shade.charge matches 1 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.94
#execute if score @s dafi.shade.charge matches 1 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 1.19
#execute if score @s dafi.shade.charge matches 1 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 1.28
#execute if score @s dafi.shade.charge matches 1 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 1.59

#execute if score @s dafi.shade.charge matches 5 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.79

#execute if score @s dafi.shade.charge matches 9 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.94

#execute if score @s dafi.shade.charge matches 13 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 1.08

#execute if score @s dafi.shade.charge matches 17 run item replace entity @s armor.feet with minecraft:leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889}} 1
#execute if score @s dafi.shade.charge matches 17 run function dafi:api/hat
#execute if score @s dafi.shade.charge matches 17 run effect clear @s minecraft:invisibility
#execute if score @s dafi.shade.charge matches 17 run effect clear @s speed
#execute if score @s dafi.shade.charge matches 17 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.83
#execute if score @s dafi.shade.charge matches 17 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.89
#execute if score @s dafi.shade.charge matches 17 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 1.08
#execute if score @s dafi.shade.charge matches 17 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 1.19
#execute if score @s dafi.shade.charge matches 17 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 0.59
#execute if score @s dafi.shade.charge matches 17 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 1.19
#execute if score @s dafi.shade.charge matches 17 run scoreboard players set @s delta.addition.magnitude 2000

#execute if score @s dafi.shade.charge matches 17 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
#execute if score @s dafi.shade.charge matches 17 at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.charge matches 17 at @s run function dafi:internal/class/shade/slash/slash_library/slash12

#execute if score @s dafi.shade.charge matches 23 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.83
#execute if score @s dafi.shade.charge matches 23 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.89
#execute if score @s dafi.shade.charge matches 23 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 1.08
#execute if score @s dafi.shade.charge matches 23 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 0.75
#execute if score @s dafi.shade.charge matches 23 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 1.5

#execute if score @s dafi.shade.charge matches 23 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
#execute if score @s dafi.shade.charge matches 23 at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.charge matches 23 at @s run function dafi:internal/class/shade/slash/slash_library/slash12

#execute if score @s dafi.shade.charge matches 29 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.59
#execute if score @s dafi.shade.charge matches 29 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.79
#execute if score @s dafi.shade.charge matches 29 run playsound block.note_block.pling master @s ~ ~1000 ~ 100 0.94
#execute if score @s dafi.shade.charge matches 29 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 0.79
#execute if score @s dafi.shade.charge matches 29 run playsound block.note_block.bass master @s ~ ~1000 ~ 500 1.59

#execute if score @s dafi.shade.charge matches 29 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
#execute if score @s dafi.shade.charge matches 29 at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
#execute if score @s dafi.shade.charge matches 29 at @s run function dafi:internal/class/shade/slash/slash_library/slash12

#execute if score @s dafi.shade.charge matches 130.. run tag @s remove dafi.offhandProcessed
#execute if score @s dafi.shade.charge matches 130.. run scoreboard players set @s dafi.offhandReady 1
#execute if score @s dafi.shade.charge matches 130.. run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"RMB","color":"white"},{"text":")","color":"yellow"}]
#execute if score @s dafi.shade.charge matches 130.. run scoreboard players set @s dafi.shade.charge 0

#execute if score @s dafi.shade.charge matches 1.. run scoreboard players add @s dafi.shade.charge 1
#execute if entity @s[advancements={dafi:eye=true}] run advancement revoke @s only dafi:eye