#!/bin/bash

if ! command -v _rr; then
    echo "TYPE_ERROR : _rr" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_rr.tst.d/_rr.tst.sh) == "_rr" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_rr.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_rr.tst.d/_rr.tst.sh) == _rr' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_rr.tst.d/_rr.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_rr.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_rr.tst.d/_rr.tst.sh' : return 1" >&2
    return 1
fi
