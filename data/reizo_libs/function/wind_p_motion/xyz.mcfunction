#> reizo_libs:wind_p_motion/xyz
#
# 
#
# @public

#> ストレージから参照
    # X
    execute \
    store result score $x reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib Wind_P_Motion.XYZ[0]
    # Y
    execute \
    store result score $y reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib Wind_P_Motion.XYZ[1]
    # Z
    execute \
    store result score $z reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib Wind_P_Motion.XYZ[2]

# ビフォー処理
function reizo_libs:wind_p_motion/sys/before

# 召喚処理
schedule function reizo_libs:wind_p_motion/summon_as/xyz 1t

# アフター処理
function reizo_libs:wind_p_motion/sys/after