#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d EXEC_FALI" >&2

if true; then
    echo "_stE"
fi

: >res

# _stE >/dev/null

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d/_stE.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_stE.tst.d/_stE.tst.sh true"
    return 0
fi