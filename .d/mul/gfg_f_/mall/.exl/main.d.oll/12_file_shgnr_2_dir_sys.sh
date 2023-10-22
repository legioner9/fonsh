#!/bin/bash

#? cr_shgnr_ 2 dir_sys in nearly ${name_fn_}.sh
"${_ehh}" cd ${dir_fns_}/dir_${name_fn_}

echo -e "${HLIGHT}--- exec: ${_cr_shgnr_} 2 dir_sys ---${NORMAL}" #start files
${_cr_shgnr_} 2 dir_sys

echo -e "${HLIGHT}--- exec: ${_cr_shgnr_} 3 fn_h ---${NORMAL}" #start files
${_cr_shgnr_} 3 fn_h

${_ehh} ${_cr_f_} ${dir_fns_}/dir_${name_fn_}/_gnr_fn_h.sh \
    --vi0 ${name_fn_} --vr0 {name_fn_} \
    --vi1 ${dir_fns_} --vr1 {dir_fns_}
