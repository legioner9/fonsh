#!/bin/bash

if ! command -v _dSYd; then
    echo "TYPE_ERROR : _dSYd" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d/_dSYd.tst.sh) == "_dSYd" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d/_dSYd.tst.sh) == _dSYd' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d/_dSYd.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d/_dSYd.tst.sh' : return 1" >&2
    return 1
fi
