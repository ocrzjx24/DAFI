execute unless score @s dafi.slide.stamina matches 40.. unless score @s dafi.slide.stamina.recoveryTime matches 1.. run scoreboard players add @s dafi.slide.stamina 1
execute if score @s dafi.slide.stamina.recoveryTime matches 1.. run scoreboard players remove @s dafi.slide.stamina.recoveryTime 1

xp set @s[scores={dafi.slide.stamina=1..40}] 62 levels

execute if score @s dafi.slide.stamina matches 0 run xp set @s 0 points
execute if score @s dafi.slide.stamina matches 1 run xp set @s 10 points
execute if score @s dafi.slide.stamina matches 2 run xp set @s 20 points
execute if score @s dafi.slide.stamina matches 3 run xp set @s 30 points
execute if score @s dafi.slide.stamina matches 4 run xp set @s 40 points
execute if score @s dafi.slide.stamina matches 5 run xp set @s 50 points
execute if score @s dafi.slide.stamina matches 6 run xp set @s 60 points
execute if score @s dafi.slide.stamina matches 7 run xp set @s 70 points
execute if score @s dafi.slide.stamina matches 8 run xp set @s 80 points
execute if score @s dafi.slide.stamina matches 9 run xp set @s 90 points
execute if score @s dafi.slide.stamina matches 10 run xp set @s 100 points
execute if score @s dafi.slide.stamina matches 11 run xp set @s 110 points
execute if score @s dafi.slide.stamina matches 12 run xp set @s 120 points
execute if score @s dafi.slide.stamina matches 13 run xp set @s 130 points
execute if score @s dafi.slide.stamina matches 14 run xp set @s 140 points
execute if score @s dafi.slide.stamina matches 15 run xp set @s 150 points
execute if score @s dafi.slide.stamina matches 16 run xp set @s 160 points
execute if score @s dafi.slide.stamina matches 17 run xp set @s 170 points
execute if score @s dafi.slide.stamina matches 18 run xp set @s 180 points
execute if score @s dafi.slide.stamina matches 19 run xp set @s 190 points
execute if score @s dafi.slide.stamina matches 20 run xp set @s 200 points
execute if score @s dafi.slide.stamina matches 21 run xp set @s 210 points
execute if score @s dafi.slide.stamina matches 22 run xp set @s 220 points
execute if score @s dafi.slide.stamina matches 23 run xp set @s 230 points
execute if score @s dafi.slide.stamina matches 24 run xp set @s 240 points
execute if score @s dafi.slide.stamina matches 25 run xp set @s 250 points
execute if score @s dafi.slide.stamina matches 26 run xp set @s 260 points
execute if score @s dafi.slide.stamina matches 27 run xp set @s 270 points
execute if score @s dafi.slide.stamina matches 28 run xp set @s 280 points
execute if score @s dafi.slide.stamina matches 29 run xp set @s 290 points
execute if score @s dafi.slide.stamina matches 30 run xp set @s 300 points
execute if score @s dafi.slide.stamina matches 31 run xp set @s 310 points
execute if score @s dafi.slide.stamina matches 32 run xp set @s 320 points
execute if score @s dafi.slide.stamina matches 33 run xp set @s 330 points
execute if score @s dafi.slide.stamina matches 34 run xp set @s 340 points
execute if score @s dafi.slide.stamina matches 35 run xp set @s 350 points
execute if score @s dafi.slide.stamina matches 36 run xp set @s 360 points
execute if score @s dafi.slide.stamina matches 37 run xp set @s 370 points
execute if score @s dafi.slide.stamina matches 38 run xp set @s 380 points
execute if score @s dafi.slide.stamina matches 39 run xp set @s 390 points
execute if score @s dafi.slide.stamina matches 40 run xp set @s 399 points

xp set @s[scores={dafi.slide.stamina=1..}] 0 levels
xp set @s[scores={dafi.slide.stamina=20..}] 1 levels
xp set @s[scores={dafi.slide.stamina=40..}] 2 levels

