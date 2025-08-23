#> reizo_mcfunc_engin:lib/wind_p_motion/looking
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/_

# ビフォー処理
function reizo_mcfunc_engin:lib/wind_p_motion/sys/before

# 召喚処理
schedule function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/looking 1t

# アフター処理
function reizo_mcfunc_engin:lib/wind_p_motion/sys/after