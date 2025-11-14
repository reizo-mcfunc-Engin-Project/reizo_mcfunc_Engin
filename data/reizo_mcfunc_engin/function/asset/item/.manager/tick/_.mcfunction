#> reizo_mcfunc_engin:asset/item/.manager/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:player/tick/_

# TODO:Call Methodに対応しよう。

# データ取得
function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/_

# 実行
execute \
if data storage reizo_mcfunc_engin:item data run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/_