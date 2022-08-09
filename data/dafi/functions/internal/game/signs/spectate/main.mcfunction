scoreboard players set @s[tag=!spectate] dafi.mechanics.autospectate -1
scoreboard players operation @s dafi.mechanics.autospectate *= .autospectate dafi.mechanics.autospectate
tag @s[scores={dafi.mechanics.autospectate=1}] add dafi.spectate
tellraw @s[scores={dafi.mechanics.autospectate=1}] ["",{"text":"[NOTE] : ","bold":true,"color":"gold"},{"text":"Auto-joins spectator mode after death (On)","italic":true,"color":"green"}]
tag @s[scores={dafi.mechanics.autospectate=-1}] remove dafi.spectate
tellraw @s[scores={dafi.mechanics.autospectate=-1}] ["",{"text":"[NOTE] : ","bold":true,"color":"gold"},{"text":"Auto-joins spectator mode after death (Off)","italic":true,"color":"red"}]