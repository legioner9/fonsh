#!/bin/bash
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

src_puml_file="${_dotd_dir_sal}/${name_fn_}.puml"

"${_ehh}" "${_is_est_}" "${src_puml_file}" -f

"${_ehh}" ${_cr_f_dir_insert_} --name ${src_puml_file} --dir_insert ${insert_dir}/_fn_fff_puml

"${_ehh}" ${_cr_f_} ${src_puml_file} --vi0 ${name_fn_} --vr0 {name_fn_}

# "${_ehh}" ${_upg_path_} ${src_puml_file} 1>/dev/null
echo -e "${HLIGHT}--- ${_upg_path_} ${path_file}>/dev/null  ---${NORMAL}" #start files
${_upg_path_} ${src_puml_file} 1>/dev/null
