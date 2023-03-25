#scoreboard players set @s[advancements={dafi:shield=true}] shieldCheck 1
execute at @s[advancements={dafi:shield=true}] anchored eyes rotated ~ 90 run function dafi:internal/class/steel/particle/particle1


# execute at @s[advancements={dafi:shield=true},team=blue] run effect give @a[team=!blue,distance=..5] poison 1 100 true
# execute at @s[advancements={dafi:shield=true},team=red] run effect give @a[team=!red,distance=..5] poison 1 100 true

#scoreboard players set @s[advancements={dafi:shield=false}] shieldCheck 0
#advancement revoke @s only dafi:shield