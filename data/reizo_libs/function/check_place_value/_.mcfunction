#> reizo_libs:check_place_value/_
#
# Int型の位を検知する。
#
# @public

# まずはスコアに。
execute \
store result score $PlaceValue._ reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:lib In.CheckPlaceValue

#> 位の検知(力技)
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 0 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value "Null"
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 1..9 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 1
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 10..99 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 10
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 100..999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 100
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 1000..9999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 1000
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 10000..99999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 10000
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 100000..999999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 100000
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 1000000..9999999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 1000000
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 10000000..99999999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 10000000
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 100000000..999999999 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 100000000
    execute \
    if score $PlaceValue._ reizo_mcfunc_Engin.Temp matches 1000000000..2147483647 run \
    data modify storage reizo_mcfunc_engin:lib Return.CheckPlaceValue set value 1000000000

# スコアリセット
scoreboard players reset $PlaceValue._ reizo_mcfunc_Engin.Temp