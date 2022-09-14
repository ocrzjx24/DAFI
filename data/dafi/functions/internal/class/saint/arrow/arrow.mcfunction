
particle end_rod ~ ~ ~ 0 0 0 0 1 force

#execute if entity @a[sort=nearest,limit=1,distance=..100] run function dafi:internal/class/saint/arrow/applymotion
execute if entity @s[tag=dafi.arrow.red] if entity @a[team=!red,sort=nearest,limit=1,distance=..1000] run function dafi:internal/class/saint/arrow/applymotion
execute if entity @s[tag=dafi.arrow.blue] if entity @a[team=!blue,sort=nearest,limit=1,distance=..1000] run function dafi:internal/class/saint/arrow/applymotion
execute if entity @s[tag=dafi.arrow.ffa] if entity @a[sort=nearest,limit=1,distance=..1000] run function dafi:internal/class/saint/arrow/applymotion