#!/bin/bash

if ! command -v _bcp_strc; then
    echo "TYPE_ERROR : _bcp_strc" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst.d/_bcp_strc.tst.sh) == "_bcp_strc" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst.d/_bcp_strc.tst.sh) == _bcp_strc' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst.d/_bcp_strc.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_bcp_strc.tst.d/_bcp_strc.tst.sh' : return 1" >&2
    return 1
fi
