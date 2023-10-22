#!/bin/bash

#! _${name_fn_}/_debug/self_tst -> .d/.self_tst

dir_self_tst="${_dotd_dir}/.self_tst"

"${_ehh}" cd ${dir_self_tst}

"${_ehh}" ${_cr_sh_} generate_self_tst_1.sh

file_path=${dir_self_tst}/generate_self_tst_1.sh

body=${insert_dir}/_fn_fff_self_tst_1/body_self_tst_1.insert

"${_ehh}" ${_cr_f_} ${file_path} --fi0 ${body} --fr0 {body}

echo -e "${HLIGHT}--- . ${dir_self_tst}/generate_self_tst_1.sh ---${NORMAL}" #start files
. ${dir_self_tst}/generate_self_tst_1.sh
