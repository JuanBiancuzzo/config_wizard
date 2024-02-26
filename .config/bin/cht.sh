#!/bin/bash

lenguajes=$(echo "golang python rust c cpp lua" | tr " " "\n")
core_utils=$(echo "xargs tr find sed awk grep" | tr " " "\n")

seleccion=$(echo -e "$lenguajes\n$core_utils" | fzf)

read -p "Query: " query

if echo "$lenguajes" | grep -qs $seleccion; then
    curl cht.sh/$seleccion/$(echo "$query" | tr " " "+")
else
    curl cht.sh/$seleccion~$query
fi
