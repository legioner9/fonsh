#!/bin/bash

#! amount args
# ${_is_amount_arg} ${NARGS} min_equ max_equ
# if [ $? -ne 0 ]; then
#     plt_pause "from ${FNN}() :: ${_is_amount_arg} ${NARGS} min_equ:: be return 1"
#     return 1
# fi
#! normalize ptr_path -> absolut path
# ptr_path=$1
# ptr_path=$(${_abs_path} $PPWD "ptr_path") #ptr args
#! variables for cr_f_dir_insert_
# fn_name=$(${_prs_f} -n ${arg_path})
# root_path=$(${_prs_f} -d ${arg_path})
#! search in array
# [[ " ${arr[*]} " =~ " $1 " ]] && echo "true" || echo "false"
#! ${array[@]:1} all from 1 member arr

echo -e "${GREEN}\${g_args[@]} = ${g_args[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${e_args[@]} = ${e_args[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${f_args[@]} = ${f_args[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${NARGS} = ${NARGS}${NORMAL}" #print variable
echo -e "${GREEN}\${ARGS0} = ${ARGS0}${NORMAL}" #print variable
echo -e "${GREEN}\${ARGS1} = ${ARGS1}${NORMAL}" #print variable
echo -e "${GREEN}\${ARGS2} = ${ARGS2}${NORMAL}" #print variable

echo -e "${GREEN}\${dir_fns_} = ${dir_fns_}${NORMAL}" #print variable

echo -e "${GREEN}\${local_var_wrap_arr[@]} = ${local_var_wrap_arr[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${local_var_fn_arr[@]} = ${local_var_fn_arr[*]}${NORMAL}" #print variable

echo -e "${GREEN}\$ratis = $ratis${NORMAL}" #print variable

echo "that ${FNN}.sal"

#! every from list_strong_cntls by able
# list_strong_cntls=(?str_ ?del_ ?parr_)
# for item in "${list_strong_cntls[@]}"; do
#     echo -e "${GREEN}\$item = $item${NORMAL}" #print variable
#     echo "$(eval echo \$"$item")"
#     if [ -z "$(eval echo \$"$item")" ]; then
#         plt_info "from ${FNN}() :: $item is empty :: be return 1"
#         return 1
#     fi
# done

#! once dpl_ or bcp_ mast be able (0 1)
# sum_1=$((${dpl_:-0} + ${bcp_:-0}))
# echo -e "${GREEN}\$sum_1 = $sum_1${NORMAL}"

# if [ "${sum_1:-0}" -ne 1 ]; then
#     plt_info "from ${FNN}() once dpl_ or bcp_ mast be able :: be return 1"
#     return 1
# fi

#?--------------------------------------------------------
#?---------------------------------------------
#?---------------------------------------



#?---------------------------------------
#?---------------------------------------------
#?--------------------------------------------------------