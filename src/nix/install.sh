#!/bin/sh

set -e

echo "Installing Nix"

apt-get update \
	&& export DEBIAN_FRONTEND=noninteractive \
	&& apt-get -y install xz-utils

for USERNAME in `ls /home`
do
	su $USERNAME -c "sh <(curl -L https://nixos.org/nix/install) --no-daemon"

	echo "Installing Nix Packages: $PACKAGES"

	su $USERNAME -c ". ~/.nix-profile/etc/profile.d/nix.sh && nix-env --install $PACKAGES"
done
