## SPREAD
execute as @e[type=armor_stand,tag=s1] if score @s sbsid = @p sbsid run tp @s ^4 ^5 ^4
execute as @e[type=armor_stand,tag=s2] if score @s sbsid = @p sbsid run tp @s ^2 ^5 ^4
execute as @e[type=armor_stand,tag=s3] if score @s sbsid = @p sbsid run tp @s ^ ^5 ^4
execute as @e[type=armor_stand,tag=s4] if score @s sbsid = @p sbsid run tp @s ^-2 ^5 ^4
execute as @e[type=armor_stand,tag=s5] if score @s sbsid = @p sbsid run tp @s ^-4 ^5 ^4

execute as @e[type=armor_stand,tag=s6] if score @s sbsid = @p sbsid run tp @s ^4 ^3 ^4
execute as @e[type=armor_stand,tag=s7] if score @s sbsid = @p sbsid run tp @s ^2 ^3 ^4
execute as @e[type=armor_stand,tag=s8] if score @s sbsid = @p sbsid run tp @s ^ ^3 ^4
execute as @e[type=armor_stand,tag=s9] if score @s sbsid = @p sbsid run tp @s ^-2 ^3 ^4
execute as @e[type=armor_stand,tag=s10] if score @s sbsid = @p sbsid run tp @s ^-4 ^3 ^4

execute as @e[type=armor_stand,tag=s11] if score @s sbsid = @p sbsid run tp @s ^4 ^1 ^4
execute as @e[type=armor_stand,tag=s12] if score @s sbsid = @p sbsid run tp @s ^2 ^1 ^4
execute as @e[type=armor_stand,tag=s13] if score @s sbsid = @p sbsid run tp @s ^ ^1 ^4
execute as @e[type=armor_stand,tag=s14] if score @s sbsid = @p sbsid run tp @s ^-2 ^1 ^4
execute as @e[type=armor_stand,tag=s15] if score @s sbsid = @p sbsid run tp @s ^-4 ^1 ^4

execute as @e[type=armor_stand,tag=s16] if score @s sbsid = @p sbsid run tp @s ^4 ^-1 ^4
execute as @e[type=armor_stand,tag=s17] if score @s sbsid = @p sbsid run tp @s ^2 ^-1 ^4
execute as @e[type=armor_stand,tag=s18] if score @s sbsid = @p sbsid run tp @s ^ ^-1 ^4
execute as @e[type=armor_stand,tag=s19] if score @s sbsid = @p sbsid run tp @s ^-2 ^-1 ^4
execute as @e[type=armor_stand,tag=s20] if score @s sbsid = @p sbsid run tp @s ^-4 ^-1 ^4

execute as @e[type=armor_stand,tag=s21] if score @s sbsid = @p sbsid run tp @s ^4 ^-3 ^4
execute as @e[type=armor_stand,tag=s22] if score @s sbsid = @p sbsid run tp @s ^2 ^-3 ^4
execute as @e[type=armor_stand,tag=s23] if score @s sbsid = @p sbsid run tp @s ^ ^-3 ^4
execute as @e[type=armor_stand,tag=s24] if score @s sbsid = @p sbsid run tp @s ^-2 ^-3 ^4
execute as @e[type=armor_stand,tag=s25] if score @s sbsid = @p sbsid run tp @s ^-4 ^-3 ^4

##BLOCK ROCKETS
execute as @e[type=shulker,tag=!blockRockets] if score @s sbsid = @p sbsid run tag @s add blockRockets