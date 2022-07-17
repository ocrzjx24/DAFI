scoreboard players add @s[scores={slowCheck=1}] slow 1
execute unless score @s slowCheck matches 1 run scoreboard players remove @s[scores={slow=1..}] slow 2
execute unless score @s slowCheck matches 1 run scoreboard players set @s[scores={slow=..-1}] slow 0
scoreboard players set @s[scores={slowCheck=1}] slowCheck 0
