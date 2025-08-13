#> reizo_mcfunc_engin:lib/signum/storage
#
# なんでも鑑定団(正の数か負の数か検知ver)
#
# @public

# ストレージの値をTempにコピー、文字列だけは指定すんなよ。
$execute \
store result score $Signum reizo_mcfunc_Engin.Temp run \
data get storage $(Storage) $(Path) $(Scale)

# 検知していくぅ！
function reizo_mcfunc_engin:lib/signum_check/sys/_