#!/bin/bash

"${_ehh}" cd ${dir_fns_}/dir_${name_fn_}/

"${_ehh}" mkdir ${name_fn_}extst

"${_ehh}" cd ${name_fn_}extst

#? cr_tst_sys_
echo -e "${HLIGHT}--- exec: ${_cr_tst_sys_} --name_dir extst_1 --ext extst ---${NORMAL}" #start files
${_cr_tst_sys_} --name_dir extst_1 --ext extst

"${_ehh}" cd ${dir_fns_}/dir_${name_fn_}/${name_fn_}extst/extst_1