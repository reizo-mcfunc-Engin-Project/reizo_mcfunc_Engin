#> reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/_

# 継承情報を取得
data modify storage reizo_mcfunc_engin:context this.Merge.Extends set from storage reizo_mcfunc_engin:item Register.Extends

# ブロックリストが存在するなら、リストに入っているクラスを削除
execute if data storage reizo_mcfunc_engin:item Field.Merge.Lore.classBlockList run function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/_

# Registerの退避
data modify storage reizo_mcfunc_engin:context this.RegisterStash set from storage reizo_mcfunc_engin:item Register

# お掃除
data remove storage reizo_mcfunc_engin:item Register

# 一つ一つ見てLoreをスタックに積む
function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/foreach

#> 自分の登録処理も実行し、追加しておく
    # 登録処理の呼び出し
    function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:context Args
    # 追加
    data modify storage reizo_mcfunc_engin:context this.Lore append from storage reizo_mcfunc_engin:item Register.Lore[]
    # お掃除
    data remove storage reizo_mcfunc_engin:item Register

# Registerを戻す
# TODO: Loreの変更後か変更前、どっちがいいかね？今のところ変更前だけど。まぁ...混乱したら変えといて。
data modify storage reizo_mcfunc_engin:item Register set from storage reizo_mcfunc_engin:context this.RegisterStash