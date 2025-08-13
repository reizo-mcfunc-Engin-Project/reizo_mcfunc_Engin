#> reizo_mcfunc_engin:lib/signum_check/score
#
# なんでも鑑定団(正の数か負の数か検知ver)
#
# @public

# Tempにスコアをコピー
$execute \
store result score $Signum reizo_mcfunc_Engin.Temp run \
scoreboard players get $(Selecter) $(Obj)

# 検知していくぅ！
function reizo_mcfunc_engin:lib/signum_check/sys/_