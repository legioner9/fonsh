#!/bin/bash

"${_ehh}" cp -rf ${PATH_FS_STANDARTS_AX_DIR}/.dd ${_dotd_dir}

"${_ehh}" cd ${_dotd_dir}

"${_ehh}" rm ${_dotd_dir}/.dd/cr_tree_gign_dir.sh

"${_ehh}" ${_cr_sh_} ${_dotd_dir}/.dd/cr_tree_gign_dir.sh

#? ins

this_file=${_dotd_dir}/.dd/cr_tree_gign_dir.sh

"${_ehh}" ${_is_est_} ${this_file} -f

"${_ehh}" ${_cr_f_dir_insert_} --name ${this_file} --dir_insert ${insert_dir}/cr_dotd_dotdd
