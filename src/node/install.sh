#!/bin/sh

set -e

if [ ! -x /bin/bash ]
then
	apk update && apk add bash
fi

for USERNAME in `ls /home`
do
	su $USERNAME -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash"
	su $USERNAME -c 'export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install --lts'
done
