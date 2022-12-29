#execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["dafi.shade.slashpos","dafi.blue"]}
#execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["dafi.shade.slashpos","dafi.red"]}
#execute if entity @s[team=ffa] run summon marker ~ ~ ~ {Tags:["dafi.shade.slashpos","dafi.ffa"]}


summon marker ~ ~ ~ {Tags:["dafi.shade.slashpos","dafi.shade.slash","dafi.ffa"]}

tp @e[tag=dafi.shade.slashpos,tag=!processed] @s
tp @e[tag=dafi.shade.slashpos,tag=!processed] ~ ~1.62 ~
tag @e[tag=dafi.shade.slashpos,tag=!processed] add processed
