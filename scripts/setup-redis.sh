# redis.sh

if [ ! -e ~/.setup/redis ]; then
    touch ~/.setup/redis

    pacman-install-if-needed redis-server
fi
