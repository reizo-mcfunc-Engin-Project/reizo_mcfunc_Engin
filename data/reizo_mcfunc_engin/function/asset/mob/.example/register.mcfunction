#> 
#
# 
#
# @

# OMD呼び出し
function #oh_my_dat:please

#> データ登録
    # IDをコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.ID set from storage reizo_mcfunc_engin:asset ID
    # namespaceコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.namespace set from storage reizo_mcfunc_engin:asset namespace
    # 継承(オプション)
    # 継承されないかどうか。 boolean型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.Final set value 1b
    # 名前 String型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Name set value "お手本ゾンビマン"
    # 体力はどれぐらい？ Float型
    # data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Health set value 1.0f
    # 持っているアイテム String型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.equipment set value {chest:{id:"leather_chestplate"},mainhand:{id:"iron_axe"}}
    # 大きさはどれくらい？ Max = 16.0d
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Scale set value 1.1d