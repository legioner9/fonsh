#!/bin/bash

dir_help=${dir_fns_}/dir_${name_fn_}/.d.ax/.sal.ax/${name_fn_}.d.h

echo "DATE: $(date +"%Y%m%d%H%M")" >${dir_help}/date.insert

echo "DFNS: ${dir_fns_}" >${dir_help}/dfns.insert

${_ehh} ${_upg_path_} ${dir_help}/dfns.insert

echo "NAME: ${name_fn_}" >${dir_help}/name.insert

echo "GRAD: ${grad_}" >${dir_help}/grad.insert

echo "RTFN: ${name_fn_} ${name_fn_}c_ ${name_fn_}g_" >${dir_help}/rtfn.insert
echo -e "RETU: 
    - type (value|bool|stdout|ptr)
    -" >${dir_help}/retu.insert
echo -e "ERRO:
    - type (return > 0 |& stderr |& exit)
    -
" >${dir_help}/erro.insert

# ln -sv ${PATH_PLT_DIR}/.d/.anc.ax/ifs_fn.d.man/name_fn.d.h/lego.insert ${dir_help}/lego.insert 

${_cr_f_} ${dir_help}/lego.insert --vi0 ${dir_fns_} --vr0 {dir_fns_}
${_cr_f_} ${dir_help}/lego.insert --vi0 ${name_fn_} --vr0 {name_fn_}
${_upg_path_} ${dir_help}/lego.insert 1>/dev/null