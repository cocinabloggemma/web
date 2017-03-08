#!/bin/bash

MESSAGE="$@"
REPO="github.com/cocinabloggemma/web.git"

if [ "$MESSAGE" == "" ]; then
	echo "Debes pasar como parametros los comentarios de la subida"
	exit 1
fi




REPO_URL="https://$REPO"
if [ -f auth.cfg ]; then
	. auth.cfg
	if [ "$USER" != "" ]; then
		if [ "$PASS" != "" ]; then
			REPO_URL="https://$USER:$PASS@$REPO"
		else
			REPO_URL="https://$USER@$REPO"
		fi

	fi
fi



git add -u
git add *
git commit -m "$MESSAGE"
git push "$REPO_URL" --all

