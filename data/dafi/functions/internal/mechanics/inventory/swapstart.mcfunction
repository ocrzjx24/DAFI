execute if entity @s[tag=siao] run function dafi:internal/class/siao/swap

#>SAINT
execute if entity @s[tag=dafi.saint] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/saint/swap/swapstart


#>SHADE
execute if entity @s[tag=dafi.shade] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/shade/swap/swapstart

#>SIEGE
execute if entity @s[tag=dafi.siege] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/siege/swap/swapstart


#>SLAY
execute if entity @s[tag=dafi.slay] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/slay/swap/swapstart


#>SOUL
execute if entity @s[tag=dafi.soul] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/soul/swap/swapstart


#>STEEL
execute if entity @s[tag=dafi.steel] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/steel/swap/swapstart


#>STING
execute if entity @s[tag=dafi.sting] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/sting/swap/swapstart

#>STORM
execute if entity @s[tag=dafi.storm] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/storm/swap/swapstart


#>SWAMP
execute if entity @s[tag=dafi.swamp] if predicate dafi:swap_trigger_offhand run function dafi:internal/class/swamp/swap/swapstart


#> Reload
execute if predicate dafi:reload_trigger_offhand if score @s dafi.arrow.reload_time matches 0 run function dafi:internal/mechanics/arrow/reload
execute if predicate dafi:reload_trigger_offhand if score @s dafi.arrow.reload_time matches 1.. run playsound entity.villager.no master @s ~ ~1000 ~ 100 2
function dafi:internal/mechanics/inventory/swap
