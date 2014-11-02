if [ ! -e ~/.setup/buildessential ]; then
    touch ~/.setup/buildessential

    pacman-install-if-needed binutils autoconf flex bison libjpeg freetype2 zlib zeromq gdbm ncurses automake libtool libffi-dev curl

    # Utils
    pacman-install-if-needed git tmux
fi
