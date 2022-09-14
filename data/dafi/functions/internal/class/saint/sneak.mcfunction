execute if predicate dafi:is_sneaking run effect give @s slow_falling 1 1 true
execute if predicate dafi:is_sneaking anchored feet run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 2 normal 
execute unless predicate dafi:is_sneaking run effect clear @s slow_falling