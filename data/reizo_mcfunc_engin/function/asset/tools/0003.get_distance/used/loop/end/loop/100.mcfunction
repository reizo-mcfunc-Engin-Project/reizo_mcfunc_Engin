#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/loop/100
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/_

# .があるため[5]を消す
data remove storage reizo_mcfunc_engin:_ Tools.get_distance.String[5]

# [5]が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:_ Tools.get_distance.String[5] run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/loop/100