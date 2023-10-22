#!/bin/bash
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

"${_ehh}" mkdir -p "${_dotd_dir_sal}"

"${_ehh}" cp -rf "${tml_dir}/file.ax.sh" "${_name_dir}/${name_fn_}.nsc.sh"

"${_ehh}" cp -rf "${tml_dir}/.d/.self_tst" "${_dotd_dir}"

"${_ehh}" cp -rf "${tml_dir}/.d/.cir" "${_dotd_dir}"

"${_ehh}" cp -rf "${tml_dir}/.d/.sal/file.man" "${_dotd_dir_sal}/${name_fn_}.man"

"${_ehh}" cp -rf "${tml_dir}/.d/.sal/file.lst" "${_dotd_dir_sal}/${name_fn_}.lst"

"${_ehh}" cp -rf "${tml_dir}/.d/.sal/file.puml" "${_dotd_dir_sal}/${name_fn_}.puml"

# "${_ehh}" cp -rf "${tml_dir}/.d/.sal/file.body.sh" "${_dotd_dir_sal}/${name_fn_}.body.nsc.sh"

# "${_ehh}" cp -rf "${tml_dir}/.d/.sal/file.h.sh" "${_dotd_dir_sal}/${name_fn_}.h.sh"

"${_ehh}" cp -rf "${tml_dir}/_file/." "${_dotd_dir}/.${name_fn_}"
