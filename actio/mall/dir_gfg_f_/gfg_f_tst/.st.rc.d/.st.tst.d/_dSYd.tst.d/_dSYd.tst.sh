#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d EXEC_FALI" >&2

if true; then
    echo "_dSYd"
fi

: >res

# _dSYd >/dev/null

rm -r tst.d/data/dir_b/*

echo -e "${HLIGHT}--- exec: ls tst.d/data/dir_b ---${NORMAL}" #start files
ls tst.d/data/dir_b

echo -e "${HLIGHT}--- exec: _dSYd tst.d/src/dir_a tst.d/src/dir_b ---${NORMAL}" #start files 
_dSYd tst.d/src/dir_a tst.d/data/dir_b

echo -e "${HLIGHT}--- exec: ls tst.d/data/dir_b ---${NORMAL}" #start files
ls tst.d/data/dir_b

if ! diff -qr tst.d/src/dir_a tst.d/data/dir_b >/dev/null; then
    echo "in fs= file:// , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'diff -qr tst.d/src/dir_a tst.d/data/dir_b' : ${hint} : return 1" >&2
    diff -r tst.d/src/dir_a tst.d/data/dir_b >&2
    return 1
fi

cat tst.d/data/dir_b/cw.cw >>res
echo >>res

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d/_dSYd.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_dSYd.tst.d/_dSYd.tst.sh true"
    return 0
fi
