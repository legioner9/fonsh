#!/bin/bash

cd ~/.st.rc.d/.st.tst.d/_s2f.tst.d || echo "cd ~/.st.rc.d/.st.tst.d/_s2f.tst.d EXEC_FALI" >&2

cp init.file tst.file

# echo -e "${HLIGHT}--- exec: _s2f one two tst.file ---${NORMAL}" #start files
_s2f _one _two tst.file >/dev/null

cat tst.file
echo


