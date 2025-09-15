#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/used.m

# 右手で持っているなら動かないよ！
execute \
if data storage reizo_mcfunc_engin:_ Tool.Main_Address run \
return run function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/fail

#> OMD関連
    # OMD呼び出し
    function #oh_my_dat:please
    # OMDをコピー
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar

# ホットバー移動
execute \
if data storage reizo_mcfunc_engin:_ Tools.AddHotBar{Mode:0} run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_

# ホットバー追加
execute \
if data storage reizo_mcfunc_engin:_ Tools.AddHotBar{Mode:1} run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/add_hotbar/_

# ホットバー削除
execute \
if data storage reizo_mcfunc_engin:_ Tools.AddHotBar{Mode:2} run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/remove_hotbar/_

# OMDへコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar set from storage reizo_mcfunc_engin:_ Tools.AddHotBar

# お掃除
data remove storage reizo_mcfunc_engin:_ Tools.AddHotBar