#!/bin/bash
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

main_d_oll=${PATH_MUL_DIR}/${_gig_f_}/${grad_}/${tail_}/.exl/main.d.oll
echo -e "${GREEN}\$main_d_oll = $main_d_oll${NORMAL}" #print variable

ls "${main_d_oll}"
# read
for item in $(ls "${main_d_oll}"); do
    echo -e "${RED}start file: $item${NORMAL}" #print variable
    echo -e "${GREEN}\$dir_fns_ = $dir_fns_${NORMAL}" #print variable
    read
    . "${main_d_oll}/${item}"
done

#! 9_edit.sh
# ${_edit_} "${dir_fns_}/dir_${name_fn_}"
#! ------------

#! 10_extst_1.sh
# ${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/

# ${_wrp2_} mkdir --_cnd ${name_fn_}extst

# ${_wrp2_} cd --_xxd ${name_fn_}extst

# #? cr_tst_sys_
# echo -e "${HLIGHT}--- exec: ${_cr_tst_sys_} --name_dir extst_1 --ext extst ---${NORMAL}" #start files
# ${_cr_tst_sys_} --name_dir extst_1 --ext extst


#? cr_shgnr_ 1 dir_tst in ${name_fn_}extst/extst_1
#${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/${name_fn_}extst/extst_1
#! ------------
# ${_cr_shgnr_} 1 dir_tst

#! 11_tst.sh

# ${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}

# echo -e "${HLIGHT}--- exec: ${_cr_tst_dir_} --name_dir "${name_fn_}"tst --ext tst ---${NORMAL}" #start files
# ${_cr_tst_dir_} --name_dir "${name_fn_}"tst --ext tst

#! ------------
#* work in extst <<<<<<<<<<

#! 12_file_shgnr_2_dir_sys.sh
# #? cr_shgnr_ 2 dir_sys in nearly ${name_fn_}.sh
# ${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}

# echo -e "${HLIGHT}--- exec: ${_cr_shgnr_} 2 dir_sys ---${NORMAL}" #start files
# ${_cr_shgnr_} 2 dir_sys
#! ------------