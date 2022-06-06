scoreboard players set @s[tag=!spectate] autospectate -1
scoreboard players operation @s autospectate *= .autospectate autospectate
tag @s[scores={autospectate=1}] add spectate
tellraw @s[scores={autospectate=1}] ["",{"text":"[NOTE] : ","bold":true,"color":"gold"},{"text":"Auto-joins spectator mode after death (On)","italic":true,"color":"green"}]
tag @s[scores={autospectate=-1}] remove spectate
tellraw @s[scores={autospectate=-1}] ["",{"text":"[NOTE] : ","bold":true,"color":"gold"},{"text":"Auto-joins spectator mode after death (Off)","italic":true,"color":"red"}]