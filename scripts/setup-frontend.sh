#!/bin/bash

FRONTEND_VERSION="1.1.2"

pushd ~

cat > /tmp/main.json <<EOF
{
    "api": "http://${hostname}/api/v1/",
    "eventsUrl": "ws://${hostname}/events",
    "debug": "true",
    "publicRegisterEnabled": true,
    "privacyPolicyUrl": null,
    "termsOfServiceUrl": null,
    "maxUploadFileSize": null
}
EOF


if [ ! -e ~/taiga-front ]; then
    # Initial clear
    git clone https://github.com/taigaio/taiga-front.git taiga-front
    pushd ~/taiga-front
    git checkout -f $FRONTEND_VERSION

    rm -rf ~/.npm
    npm cache clear

    gem-install-if-needed sass scss-lint
    npm-install-if-needed gulp bower

    mv /tmp/main.json conf/

    sudo rm -rf /home/$USER/tmp
    npm install

    sudo rm -rf /home/$USER/tmp

    bower install
    gulp deploy
    popd
else
    pushd ~/taiga-front
    git fetch
    git reset --hard
    git checkout -f $FRONTEND_VERSION

    rm -rf ~/.npm
    npm cache clear

    npm install
    bower install
    gulp deploy
    popd
fi

popd



