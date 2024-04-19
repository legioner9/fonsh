#!/bin/bash

cd ${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d || echo "cd ${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d EXEC_FALI" >&2

if true; then
    echo "_sf2f"
fi

# _sf2f >/dev/null

: >res

if [[ -f tst.d/file_RES.f ]]; then
    rm tst.d/file_RES.f >/dev/null
fi

echo -e "${HLIGHT}--- exec: _sf2f _XXX _RES tst.d/file_XXX.f ---${NORMAL}" #start files
_sf2f _XXX _RES tst.d/file_XXX.f
echo -e "${HLIGHT}--- exec: cat tst.d/file_RES.f ---${NORMAL}" #start files
cat tst.d/file_RES.f >>res
echo >>res

flag=1

if ! diff -q res pre >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d/_sf2f.tst.sh fail" >&2
    diff res pre >&2
    return 1
else
    echo "in file://${HOME}/.st.rc.d/.st.tst.d/_sf2f.tst.d/_sf2f.tst.sh true"
    return 0
fi