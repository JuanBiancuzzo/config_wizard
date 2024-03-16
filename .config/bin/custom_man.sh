#!/bin/bash

opciones=$(man -k . | awk 'BEGIN{ FS = "-"; OFS = "\n"; ORS = "\n" } {print $1}' | awk '!a[$0]++')

eleccion=$(echo "$opciones" | fzf | awk '{print $1}')

if echo $opciones | grep -qs $eleccion 2> /dev/null; then
    man $eleccion
else
    echo -e "La opción $eleccion no esta disponible en el manual\n\tUsar Ctrl + c para salir" \
        & while [ : ]; do sleep 1; done
fi

