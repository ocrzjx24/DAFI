
execute if score #temp cw_hp_old matches 0..63 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i0
execute if score #temp cw_hp_old matches 64..127 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i64
execute if score #temp cw_hp_old matches 128..191 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i128
execute if score #temp cw_hp_old matches 192..255 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i192
execute if score #temp cw_hp_old matches 256..319 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i256
execute if score #temp cw_hp_old matches 320..383 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i320
execute if score #temp cw_hp_old matches 384..447 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i384
execute if score #temp cw_hp_old matches 448..511 run function dafi:internal/mechanics/cw_hp_control/set_hp/l2_i448