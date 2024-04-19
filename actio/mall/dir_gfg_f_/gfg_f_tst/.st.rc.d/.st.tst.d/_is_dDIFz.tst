#!/bin/bash

if ! command -v _is_dDIFz; then
    echo "TYPE_ERROR : _is_dDIFz" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/_is_dDIFz.tst.sh) == "_is_dDIFz" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_is_dDIFz.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/_is_dDIFz.tst.sh) == _is_dDIFz' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/_is_dDIFz.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_is_dDIFz.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_is_dDIFz.tst.d/_is_dDIFz.tst.sh' : return 1" >&2
    return 1
fi
