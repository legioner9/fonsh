#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_is_yes.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_is_yes.tst.d EXEC_FALI" >&2

if true; then
    echo "_is_yes"
fi

: >res

#! if _is_yes "ANSWER : "; then
#!     echo yes >&2
#! else
#!     echo no >&2
#! fi

# _is_yes >/dev/null

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_is_yes.tst.d/_is_yes.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_is_yes.tst.d/_is_yes.tst.sh true"
    return 0
fi
