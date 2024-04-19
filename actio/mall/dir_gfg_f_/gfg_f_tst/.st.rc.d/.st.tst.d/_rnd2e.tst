#!/bin/bash

if ! command -v _rnd2e; then
    echo "TYPE_ERROR : _rnd2e" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_rnd2e.tst.d/_rnd2e.tst.sh) == "_rnd2e" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_rnd2e.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_rnd2e.tst.d/_rnd2e.tst.sh) == _rnd2e' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_rnd2e.tst.d/_rnd2e.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_rnd2e.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_rnd2e.tst.d/_rnd2e.tst.sh' : return 1" >&2
    return 1
fi
