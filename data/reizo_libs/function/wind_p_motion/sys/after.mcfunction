#> reizo_libs:wind_p_motion/sys/after
#
# 
#
# @within function reizo_libs:wind_p_motion/_

# アマスタkill
schedule function reizo_libs:wind_p_motion/sys/kill 1t

# 元の位置にTP
schedule function reizo_libs:wind_p_motion/sys/tp 1t