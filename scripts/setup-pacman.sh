function pacman-install {
    for pkg in $@; do
        echo -e "[PACMAN] Installing package $pkg..."
        sudo pacman -S --needed $pkg
    done
}


function pacman-install-if-needed {
    pacman-install $@
}



