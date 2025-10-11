#> reizo_mcfunc_engin:api/extends/core/foreach/run_func/init.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# Init処理も動かす
$function $(namespace):asset/$(Type)/.manager/init/run.m with storage reizo_mcfunc_engin:api Extends.foreach

# 継承元のregisterを呼び出し
$function $(namespace):asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:api Extends.foreach

# 継承元のデータ適応
$function $(namespace):asset/$(Type)/.manager/set_data/init/_

# 継承元のregisterをコピー
$function $(namespace):api/$(Type)/get_register

# 手に入れたデータの中に継承情報があれば多段継承となる。
execute \
if data storage reizo_mcfunc_engin:api Out.Register.Extends run \
function reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/_

# お掃除
data remove storage reizo_mcfunc_engin:api Out.Register