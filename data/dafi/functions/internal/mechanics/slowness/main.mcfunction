effect clear @a slowness
effect give @a[scores={dafi.slow.duration=1..10}] slowness 1 0 true
effect give @a[scores={dafi.slow.duration=11..20}] slowness 1 1 true
effect give @a[scores={dafi.slow.duration=21..30}] slowness 1 2 true
effect give @a[scores={dafi.slow.duration=31..40}] slowness 1 3 true
effect give @a[scores={dafi.slow.duration=41..50}] slowness 1 4 true

execute as @a run function dafi:internal/mechanics/slowness/slow