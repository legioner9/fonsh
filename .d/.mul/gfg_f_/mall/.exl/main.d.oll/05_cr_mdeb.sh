#!/bin/bash
#! _${name_fn_}/_mdeb -> .d/.mdeb

"${_ehh}" cp -rf ${PATH_FS_STANDARTS_AX_DIR}/.mdeb ${_dotd_dir}

mdeb_mdeb_dir=${_dotd_dir}/.mdeb
mdeb_cntl_dir=${_dotd_dir}/.mdeb/.cntl
cr_mdeb_insert=${insert_dir}/cr_mdeb

"${_ehh}" cd ${mdeb_cntl_dir}

#? ${_cr_sh_} _cr_${name_fn_}mdeb_postfix.sh
#? cr_sh_ -> cr_f_

name_file_sh="_cr_${name_fn_}mdeb_postfix.sh"

# ${_cr_sh_} ${name_file_sh}
# ${_cr_f_dir_insert_} --name ${name_file_sh} --dir_insert ${cr_mdeb_insert}/cr_fn_mdeb_postfix

"${_ehh}" ${_cr_f_} ${name_file_sh} --tml ${PATH_FS_STANDARTS_AX_DIR}/init_body.sh

"${_ehh}" ${_cr_f_dir_insert_} --name ${name_file_sh} --dir_insert ${insert_dir}/cr_mdeb/_cr_fn_mdeb_postfix/init_body
"${_ehh}" ${_cr_f_dir_insert_} --name ${name_file_sh} --dir_insert ${insert_dir}/cr_mdeb/_cr_fn_mdeb_postfix/next_step_1

"${_ehh}" ${_cr_f_} ${name_file_sh} --vi0 ${name_fn_} --vr0 {name_fn_}

"${_ehh}" ${_cr_f_} ${name_file_sh} --vi0 ${mdeb_cntl_dir} --vr0 {mdeb_cntl_dir}

"${_ehh}" ${_obs_quis_} ${name_file_sh}

#? ${_cr_sh_} _start_${name_fn_}mdeb.sh
#? cr_sh_ -> cr_f_

name_file_sh="_start_${name_fn_}mdeb.sh"

"${_ehh}" ${_cr_f_} ${name_file_sh} --tml ${PATH_FS_STANDARTS_AX_DIR}/init_body.sh

"${_ehh}" ${_cr_f_dir_insert_} --name ${name_file_sh} --dir_insert ${insert_dir}/cr_mdeb/_start_fn_mdeb/init_body
"${_ehh}" ${_cr_f_dir_insert_} --name ${name_file_sh} --dir_insert ${insert_dir}/cr_mdeb/_start_fn_mdeb/next_step_1

"${_ehh}" ${_cr_f_} ${name_file_sh} --vi0 ${name_fn_} --vr0 {name_fn_}
"${_ehh}" ${_cr_f_} ${name_file_sh} --vi0 ${mdeb_cntl_dir} --vr0 {mdeb_cntl_dir}
"${_ehh}" ${_obs_quis_} ${name_file_sh}


echo -e "${GREEN}\${name_fn_}mdeb.sh = ${name_fn_}mdeb.sh${NORMAL}" #print variable

"${_ehh}" ${_cr_shfn_} ${name_fn_}mdeb.sh

"${_ehh}" ${_cr_f_dir_insert_} --name ${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb

"${_ehh}" ${_obs_quis_} ${name_fn_}mdeb.sh

"${_ehh}" ${_cr_f_dir_insert_} --name ${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb_zzz20


"${_ehh}" ${_cr_f_} ${name_fn_}mdeb.sh --vi0 ${name_fn_} --vr0 {name_fn_}

"${_ehh}" . _cr_${name_fn_}mdeb_postfix.sh 1 "zx"

"${_ehh}" ${_cr_f_dir_insert_} --name ${mdeb_mdeb_dir}/a1_fp_f_mdeb_zx.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb_zx
# read -p "read 1"
# ${_wrp2_} . ${mdeb_cntl_dir}/_start_${name_fn_}mdeb.sh 1
# read -p "read 2"

#? ${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.insert/cr_mdeb
