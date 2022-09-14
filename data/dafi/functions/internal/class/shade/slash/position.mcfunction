tp @s ~ ~ ~ ~ 0
function dafi:internal/class/shade/slash/position_x
execute if score .itt.y dafi.raycast matches 1.. run function dafi:internal/class/shade/slash/position_y_positive
execute if score .itt.y dafi.raycast matches ..-1 run function dafi:internal/class/shade/slash/position_y_negative

execute at @s run particle witch ~ ~ ~ 0 0 0 0 1
kill @s