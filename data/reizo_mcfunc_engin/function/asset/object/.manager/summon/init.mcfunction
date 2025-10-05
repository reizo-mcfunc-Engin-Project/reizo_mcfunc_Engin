#> reizo_mcfunc_engin:asset/object/.manager/summon/init
#
# Object共通のInit処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Object.ID set from storage reizo_mcfunc_engin:object ID
    # namespaceコピー
    data modify entity @s data.Object.namespace set from storage reizo_mcfunc_engin:object namespace

# 自分が継承されることを前提とした、抽象的なObjectでなく、何かしら継承しているなら、継承処理を叩く
execute \
if data storage reizo_mcfunc_engin:object Register.Extends run \
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/extends/_

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/_

# Tag剥奪
tag @s remove reizo_mcfunc_Engin.Object.Init