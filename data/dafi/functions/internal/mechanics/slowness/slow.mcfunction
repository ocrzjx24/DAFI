scoreboard players add @s[scores={dafi.slow.check=1}] dafi.slow.duration 1
execute unless score @s dafi.slow.check matches 1 run scoreboard players remove @s[scores={dafi.slow.duration=1..}] dafi.slow.duration 2
execute unless score @s dafi.slow.check matches 1 run scoreboard players set @s[scores={dafi.slow.duration=..-1}] dafi.slow.duration 0
scoreboard players set @s[scores={dafi.slow.check=1}] dafi.slow.check 0
