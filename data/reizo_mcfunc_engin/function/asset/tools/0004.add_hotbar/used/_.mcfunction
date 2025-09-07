#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/used.m

# 右手で持っているなら動かないよ！
execute \
if data storage reizo_mcfunc_engin:_ Tool.Main_Address run \
return run function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/fail

# ホットバー移動
execute \
if data storage reizo_mcfunc_engin:_ Tool.Off_Address run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_