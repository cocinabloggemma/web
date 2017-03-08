#!/bin/bash

MESSAGE="$@"

if [ "$MESSAGE" == "" ]; then
	echo "Debes pasar como parametros los comentarios de la subida"
	exit 1
fi


if [ -f auth.cfg ]; then
	. auth.cfg
	REPO="https://$USER:$PASS@github.com/cocinabloggemma/web.git"
else
	REPO="https://github.com/cocinabloggemma/web.git"
fi



git add *
git commit -m "$MESSAGE"
# git remote add origin https://github.com/cocinabloggemma/web.git
git push "$REPO" --all

