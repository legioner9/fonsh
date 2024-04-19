#!/bin/bash

if ! command -v _d2e; then
    echo "TYPE_ERROR" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh) == "_d2e" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_d2e.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh) == _d2e' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_d2e.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_d2e.tst.d/_d2e.tst.sh' : return 1" >&2
    return 1
fi
