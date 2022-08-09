##> dafi:api/main
# main function for api

# universal

# score dafi.antidrop | 1 = players get item teleported to them and returned to inventory on drop, -1 = items drop as they would normally
execute as @a if score @s dafi.antidrop matches 1 run scoreboard players set #universal dafi.antidrop 1
execute as @a if score @s dafi.antidrop matches -1 run scoreboard players set #universal dafi.antidrop 0
scoreboard players reset @a dafi.antidrop

# score dafi.arrowcd | [1,inf] = set amount of ticks [1,inf] after shooting when arrow returns, -1 = arrows will not return
execute as @a if score @s dafi.arrowdelay matches 1.. run scoreboard players operation #universal dafi.arrowdelay = @s dafi.arrowdelay
execute as @a if score @s dafi.arrowdelay matches -1 run scoreboard players set #universal dafi.arrowdelay 0
scoreboard players reset @a dafi.arrowdelay

# score dafi.arrowgravity | 1 = arrows aren't affected by gravity, -1 = arrows are affected by gravity
execute as @a if score @s dafi.arrownogravity matches 1 run scoreboard players set #universal dafi.arrownogravity 1
execute as @a if score @s dafi.arrownogravity matches -1 run scoreboard players set #universal dafi.arrownogravity 0
scoreboard players reset @a dafi.arrownogravity

# score dafi.autospectate | 1 = players are sent into spectate and remain in the same location on death, -1 = players respawn at their spawnpoint normally
execute as @a if score @s dafi.autospectate matches 1 run scoreboard players set #universal dafi.autospectate 1
execute as @a if score @s dafi.autospectate matches -1 run scoreboard players set #universal dafi.autospectate 0
scoreboard players reset @a dafi.autospectate

# score dafi.dropdye | 1 = dropping dyes corresponding to classes causes you to select the class, -1 = dropping dyes acts as they would normally
execute as @a if score @s dafi.dropdye matches 1 run scoreboard players set #universal dafi.dropdye 1
execute as @a if score @s dafi.dropdye matches -1 run scoreboard players set #universal dafi.dropdye 0
scoreboard players reset @a dafi.dropdye

# score dafi.dropclock | 1 = dropping clocks starts team deathmatch, -1 = dropping clocks acts as they would normally
execute as @a if score @s dafi.dropclock matches 1 run scoreboard players set #universal dafi.dropclock 1
execute as @a if score @s dafi.dropclock matches -1 run scoreboard players set #universal dafi.dropclock 0
scoreboard players reset @a dafi.dropclock

# score dafi.dropcompass | 1 = dropping compass starts defusal, -1 = dropping compasses acts as they would normally
execute as @a if score @s dafi.dropcompass matches 1 run scoreboard players set #universal dafi.dropcompass 1
execute as @a if score @s dafi.dropcompass matches -1 run scoreboard players set #universal dafi.dropcompass 0
scoreboard players reset @a dafi.dropcompass

# score dafi.doublejump | 1 = players can double jump (replaces armor.chest), -1 = players do not have the ability to double jump
execute as @a if score @s dafi.dash matches 1 run scoreboard players set #universal dafi.dash 1
execute as @a if score @s dafi.dash matches -1 run scoreboard players set #universal dafi.dash 0
scoreboard players reset @a dafi.dash

# score dafi.firework | 1 = players' crossbows are loaded with rockets instead of arrows (ORIGINAL DAFI), -1 = players crossbows are not loaded with fireworks
execute as @a if score @s dafi.firework matches 1 run scoreboard players set #universal dafi.firework 1
execute as @a if score @s dafi.firework matches -1 run scoreboard players set #universal dafi.firework 0
scoreboard players reset @a dafi.firework

# score dafi.pistonboost | 1 = players will get launched upward when standing above a piston, -1 = nothing will happen when standing above a piston
execute as @a if score @s dafi.pistonboost matches 1 run scoreboard players set #universal dafi.pistonboost 1
execute as @a if score @s dafi.pistonboost matches -1 run scoreboard players set #universal dafi.pistonboost 0
scoreboard players reset @a dafi.pistonboost

# score dafi.regeneration | [1,inf] = players will rapidly regenerate after [1,inf] ticks, -1 = players will not rapidly regenerate after taking damage (through these means)
execute as @a if score @s dafi.regeneration matches 1.. run scoreboard players operation #universal dafi.regeneration = @s dafi.regeneration
execute as @a if score @s dafi.regeneration matches -1 run scoreboard players set #universal dafi.regeneration 0
scoreboard players reset @a dafi.regeneration

# score dafi.rocketjump | 1 = arrows will launch players outward on contact with the ground, -1 = arrows will not launch players outward on contact with the ground
execute as @a if score @s dafi.rocketjump matches 1 run scoreboard players set #universal dafi.rocketjump 1
execute as @a if score @s dafi.rocketjump matches -1 run scoreboard players set #universal dafi.rocketjump 0
scoreboard players reset @a dafi.rocketjump

# score dafi.sprint | 1 = players will always have a forward acceleration vector mid-air when sprinting, -1 = players will not have a forward acceleration vector mid-air when sprinting
execute as @a if score @s dafi.sprint matches 1 run scoreboard players set #universal dafi.sprint 1
execute as @a if score @s dafi.sprint matches -1 run scoreboard players set #universal dafi.sprint 0
scoreboard players reset @a dafi.sprint

# player specific

# score dafi.class | 1 = triggers class select screen
execute as @a if score @s dafi.class matches 1 run function dafi:internal/game/select/legacy
scoreboard players reset @a dafi.class

# score dafi.hat | [1,8] = replaces player's head with hat of corresponding ID
execute as @a if score @s dafi.hat matches 1.. run tag @s add dafi.calledhatfromtrigger
execute as @a if score @s dafi.hat matches 1.. run function dafi:api/hat
execute as @a if score @s dafi.hat matches 1.. run tag @s remove dafi.calledhatfromtrigger
scoreboard players reset @a dafi.hat

# event triggers

# score dafi.defusal | 1 = start defusal gamemode
execute as @a if score @s dafi.defusal matches 1 run function dafi:api/defusal
scoreboard players reset @a dafi.defusal

# score dafi.display | 1 = display all universal scoreboards
execute as @a if score @s dafi.display matches 1 run function dafi:api/display
scoreboard players reset @a dafi.display

# score dafi.recommended | 1 = this will set a series of gamerules (both vanilla and DAFI-specific) which are regarded to be the best experience for DAFI
execute as @a if score @s dafi.recommended matches 1 run function dafi:api/recommended
scoreboard players reset @a dafi.recommended

# score dafi.teamdeathmatch | 1 = start teamdeathmatch gamemode
execute as @a if score @s dafi.teamdeathmatch matches 1 run function dafi:api/teamdeathmatch
scoreboard players reset @a dafi.teamdeathmatch

# enable triggers?
function dafi:api/enable
