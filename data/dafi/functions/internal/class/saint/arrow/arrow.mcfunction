particle end_rod ~ ~ ~ 0 0 0 0 1 force

#execute if entity @a[sort=nearest,limit=1,distance=..100] run function dafi:internal/class/saint/arrow/applymotion
execute if entity @e[type=villager,sort=nearest,limit=1,distance=..10] run function dafi:internal/class/saint/arrow/applymotion