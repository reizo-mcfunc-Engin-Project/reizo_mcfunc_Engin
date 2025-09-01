#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/loop/10
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/_

# .があるため[4]を消す
data remove storage reizo_mcfunc_engin:_ Tools.get_distance.String[4]

# [4]が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:_ Tools.get_distance.String[4] run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/loop/10