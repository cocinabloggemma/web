#!/bin/bash

if [ "$@" == "" ]; then
	echo "Debes pasar como parametros los comentarios de la subida"
	exit 1
fi

. auth.cfg

git add *
git commit -m "$@"
# git remote add origin https://github.com/cocinabloggemma/web.git
git push "https://$USER:$PASS@github.com/cocinabloggemma/web.git' --all

