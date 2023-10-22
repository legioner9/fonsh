#!/bin/bash

src_fn_file=${_name_dir}/${name_fn_}.nsc.sh

${_is_est_} ${src_fn_file} -f

echo -e "${HLIGHT}--- exec: ${_cr_f_dir_insert_} --name ${src_fn_file} --dir_insert ${insert_dir}/_fn_fff_sh ---${NORMAL}" #start files
${_cr_f_dir_insert_} --name ${src_fn_file} --dir_insert ${insert_dir}/_fn_fff_sh/1

# name_fn_
echo -e "${HLIGHT}--- exec: ${_cr_f_} ${src_fn_file} --vi0 ${name_fn_} --vr0 {name_fn_} ---${NORMAL}" #start files
${_cr_f_} ${src_fn_file} --vi0 ${name_fn_} --vr0 {name_fn_}

# dir_fns_
echo -e "${HLIGHT}--- exec: ${_cr_f_} ${src_fn_file} --vi0 ${dir_fns_} --vr0 {dir_fns_} ---${NORMAL}" #start files
${_cr_f_} ${src_fn_file} --vi0 ${dir_fns_} --vr0 {dir_fns_}

# grad_
echo -e "${HLIGHT}--- exec: ${_cr_f_} ${src_fn_file} --vi0 ${grad_} --vr0 {grad_} ---${NORMAL}" #start files
${_cr_f_} ${src_fn_file} --vi0 ${grad_} --vr0 {grad_}

echo -e "${HLIGHT}--- exec: ${_upg_path_} ${src_fn_file} 1>/dev/null ---${NORMAL}" #start files
${_upg_path_} ${src_fn_file} 1>/dev/null
