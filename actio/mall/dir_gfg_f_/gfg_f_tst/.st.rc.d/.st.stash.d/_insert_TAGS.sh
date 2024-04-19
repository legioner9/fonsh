#!/bin/bash

for item in $(ls ${HOME}/.st.rc.d/.st.sh.d); do

    # if _is_yes "_f2f ${HOME}/.st.rc.d/.st.stash.d/TAGS.insert MAIN: ${HOME}/.st.rc.d/.st.sh.d/${item}"; then
        _f2f ${HOME}/.st.rc.d/.st.stash.d/TAGS.insert MAIN: ${HOME}/.st.rc.d/.st.sh.d/${item}
    # fi

done
