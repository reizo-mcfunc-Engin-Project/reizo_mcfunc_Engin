#> reizo_mcfunc_engin:api/trigger/core/run/check/item/_
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/foreach

# Slot確認
    # 登録処理を走らせる
    function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:api Trigger.run.Entry
    # スロットを確認
    data modify storage reizo_mcfunc_engin:api Trigger.run.Item.Slot set from storage reizo_mcfunc_engin:item Register.Slot
    # お掃除
    data remove storage reizo_mcfunc_engin:item Register
    # 実行スロット分のスロットにあるアイテムを取得
    function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/foreach
    # 手に入れたデータをチェック！
    function reizo_mcfunc_engin:api/trigger/core/run/check/item/foreach
    # お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item