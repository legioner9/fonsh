#!/bin/bash

if ! command -v _ststart; then
    echo "TYPE_ERROR : _ststart" >&2
    return 1
fi

# if ! [[ $(. ${HOME}/.st.rc.d/.st.tst.d/_ststart.tst.d/_ststart.tst.sh) == "_ststart" ]]; then
#     echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_ststart.tst , line=${LINENO}, pwd=${PWD}" >&2
#     echo "EXEC_FAIL : '\$(. ${HOME}/.st.rc.d/.st.tst.d/_ststart.tst.d/_ststart.tst.sh) == _ststart' : return 1" >&2
#     return 1
# fi

if ! . ${HOME}/.st.rc.d/.st.tst.d/_ststart.tst.d/_ststart.tst.sh; then
    echo "in fs=file://${HOME}/.st.rc.d/.st.tst.d/_ststart.tst , line=${LINENO}, pwd=${PWD}" >&2
    echo "EXEC_FAIL : '. ${HOME}/.st.rc.d/.st.tst.d/_ststart.tst.d/_ststart.tst.sh' : return 1" >&2
    return 1
fi
