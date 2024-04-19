#!/bin/bash

if ! command -v _XXX; then
    echo "TYPE_ERROR : _XXX" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_XXX.tst.d/_XXX.tst.sh) == "_XXX" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_XXX.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_XXX.tst.d/_XXX.tst.sh) == _XXX' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_XXX.tst.d/_XXX.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_XXX.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_XXX.tst.d/_XXX.tst.sh' : return 1" >&2
    return 1
fi
