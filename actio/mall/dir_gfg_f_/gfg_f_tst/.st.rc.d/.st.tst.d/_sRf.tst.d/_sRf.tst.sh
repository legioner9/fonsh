#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_sRf.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_sRf.tst.d EXEC_FALI" >&2

if true; then
    echo "_sRf"
fi

# _sRf >/dev/null
cp init.file res

# echo -e "${HLIGHT}--- exec: _s2f one two tst.file ---${NORMAL}" #start files
_sRf '{' res >/dev/null
_sRf '}' res >/dev/null
_sRf '\[' res >/dev/null
_sRf '\]' res >/dev/null
_sRf '~' res >/dev/null
_sRf '!' res >/dev/null
_sRf '@' res >/dev/null
_sRf '#' res >/dev/null
_sRf '\$' res >/dev/null
_sRf '%' res >/dev/null
_sRf '\^' res >/dev/null
_sRf '&' res >/dev/null
_sRf '*' res >/dev/null
_sRf '(' res >/dev/null
_sRf ')' res >/dev/null
_sRf '+' res >/dev/null
_sRf '=' res >/dev/null
_sRf '`' res >/dev/null
_sRf '\\' res >/dev/null
_sRf '/' res >/dev/null
_sRf '"' res >/dev/null
_sRf '<' res >/dev/null
_sRf '>' res >/dev/null
_sRf ',' res >/dev/null
_sRf '.' res >/dev/null
_sRf '№' res >/dev/null
_sRf '?' res >/dev/null
_sRf ':' res >/dev/null
_sRf ';' res >/dev/null
_sRf '_' res >/dev/null
_sRf '-' res >/dev/null


cat res

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_sRf.tst.d/_sRf.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_sRf.tst.d/_sRf.tst.sh true"
    return 0
fi