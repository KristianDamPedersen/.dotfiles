#!/usr/bin/env bash
# Requires LastPass CLI to be configured
TOKEN="personal-github-access-token"
ACCOUNT="KristianDamPedersen"
GIT_EMAIL="kristian.dam.pedersen@gmail.com"
GIT_NAME="Kristian Pedersen"

# Check wether the lastpass cli is installed
if ! command -v lpass &>/dev/null; then
	echo "LastPass CLI could not be found"
	exit 1
fi

# Check wether the lastpass cli is configured (and sync whilst we're at it)
if ! lpass sync; then
	echo "LastPass CLI needs to be configured"
	exit 1
fi

PASS=$(lpass show -p ${TOKEN})

# Now we set the credentials
git config user.name ${GIT_NAME}
git config user.email ${GIT_EMAIL}

# Get the current git url
URL=$(git config --get remote.origin.url)
echo ${URL}
