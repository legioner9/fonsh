#!/bin/bash

if ! command -v _stE; then
    echo "TYPE_ERROR : _stE" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d/_stE.tst.sh) == "_stE" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_stE.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d/_stE.tst.sh) == _stE' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d/_stE.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_stE.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d/_stE.tst.sh' : return 1" >&2
    return 1
fi
