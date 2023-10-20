
# $\mathscr{fons\ sh }$ 

# install

    cd ${FONSH_PATH}
    git clone git@github.com:legioner9/fonsh.git .

    #! modify ~/.bashrc
    exec_string='if [ -f ${FONSH_PATH}/.fonsh ]; then . ${FONSH_PATH}/.fonsh; fi'

    if ! grep -F "${exec_string}" <~/.bashrc; then

        echo "${exec_string}" >>~/.bashrc

    fi