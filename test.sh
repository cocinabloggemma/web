#!/bin/bash

MESSAGE="$@"

if [ "$MESSAGE" == "" ]; then
	echo "Debes pasar como parametros los comentarios de la subida"
	exit 1
fi




git add -u 2>/dev/null
git add *  2>/dev/null
git commit -m "$MESSAGE"
git push "ssh://root@192.168.0.100/server/git/laboratorio.git" --all

