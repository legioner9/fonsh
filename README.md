
# $\mathscr{fons\ sh }$

# intro

# install

    FONSH_PATH="path to fonsh lib"
    cd ${FONSH_PATH}
    git clone git@github.com:legioner9/fonsh.git .

    #! modify ~/.bashrc
    exec_string='if [ -f ${FONSH_PATH}/.fonshrc ]; then . ${FONSH_PATH}/.fonshrc; fi'

    if ! grep -F "${exec_string}" <~/.bashrc; then

        echo "${exec_string}" >>~/.bashrc

    fi

    if ! grep -F 'FONSH_PATH=' <${FONSH_PATH}/.fonshrc; then

        sed -e '3a\
        FONSH_PATH='"${FONSH_PATH}"'' ${FONSH_PATH}/.fonshrc

    fi
