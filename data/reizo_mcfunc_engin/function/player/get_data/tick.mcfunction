#> reizo_mcfunc_engin:player/get_data/tick
#
# 
#
# @within function reizo_mcfunc_engin:player/tick/_

function reizo_mcfunc_engin:player/get_data/item
function reizo_mcfunc_engin:player/get_data/is_on_fire
function reizo_mcfunc_engin:player/get_data/is_on_ground
function reizo_mcfunc_engin:player/get_data/is_on_hurt
execute \
if predicate reizo_mcfunc_engin:sneak run \
function reizo_mcfunc_engin:player/get_data/sneking