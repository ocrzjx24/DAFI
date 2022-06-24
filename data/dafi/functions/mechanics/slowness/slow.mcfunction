scoreboard players add @s[scores={slowCheck=1}] slow 1
scoreboard players remove @s[scores={slowCheck=0,slow=1..}] slow 2
scoreboard players set @s[scores={slowCheck=0,slow=..-1}] slow 0
scoreboard players set @s[scores={slowCheck=1}] slowCheck 0
