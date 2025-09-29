#> reizo_libs:wind_p_motion/looking
#
# 
#
# @public

# ストレージから参照
execute \
store result score $strength reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:lib Wind_P_Motion.Strength

# ビフォー処理
function reizo_libs:wind_p_motion/sys/before

# 召喚処理
schedule function reizo_libs:wind_p_motion/summon_as/looking 1t

# アフター処理
function reizo_libs:wind_p_motion/sys/after