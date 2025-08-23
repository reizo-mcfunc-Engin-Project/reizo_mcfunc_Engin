#> reizo_mcfunc_engin:lib/signum_check/debug/tell_value
#
# 正か負か知らせる。
#
# @within function
#   reizo_mcfunc_engin:lib/signum_check/sys/_
#   reizo_mcfunc_engin:lib/signum_check/sys/value_is_0

# 0で笑う。
execute \
if data storage reizo_mcfunc_engin:lib {Return:{Signum:0.0f}} run \
tellraw @a [{"text":"値は、",color:"white"},{"text":"0",color:"gold"},{"text":"でした。",color:"white"}]

# 正の数でした。
$execute \
if data storage reizo_mcfunc_engin:lib {Return:{Signum:1.0f}} run \
tellraw @a [{"text":"値は、",color:"white"},{"text":"正の数",color:"gold",hover_event:{action:"show_text",value:[{"text":"ObjName",color:"aqua"},{"text":":",color:"white"},{"text":"$(Obj)",color:"green"},{"text":"\nHolderName"},{"text":":",color:"white"},{"text":"$(Selecter)\n",color:"green"},{"text":"Value",color:"aqua"},{"text":":",color:"white"},{"score":{name:"$Signum",objective:"reizo_mcfunc_Engin.Temp"},color:"gold"}]}},{"text":"でした。",color:"white"}]

# 負の数来たぞ。
$execute \
if data storage reizo_mcfunc_engin:lib {Return:{Signum:-1.0f}} run \
tellraw @a [{"text":"値は、",color:"white"},{"text":"負の数",color:"gold",hover_event:{action:"show_text",value:[{"text":"ObjName",color:"aqua"},{"text":":",color:"white"},{"text":"$(Obj)",color:"green"},{"text":"\nHolderName"},{"text":":",color:"white"},{"text":"$(Selecter)\n",color:"green"},{"text":"Value",color:"aqua"},{"text":":",color:"white"},{"score":{name:"$Signum",objective:"reizo_mcfunc_Engin.Temp"},color:"gold"}]}},{"text":"でした。",color:"white"}]