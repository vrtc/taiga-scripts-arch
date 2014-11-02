# postgresql.sh

function createdb-if-needed {
    for dbname in $@; do
        $(psql -l | grep -q "$dbname") || createdb "$dbname"
    done
}

function dropdb-if-needed {
    for dbname in $@; do
        $(psql -l | grep -q "$dbname") && dropdb "$dbname"
    done
}

if [ ! -e ~/.setup/postgresql ]; then
    pacman-install-if-needed postgresql postgresql-docs postgresql-libs

    sudo -u postgres createuser --superuser $USER &> /dev/null
    sudo -u postgres createdb $USER &> /dev/null

    touch ~/.setup/postgresql
fi

