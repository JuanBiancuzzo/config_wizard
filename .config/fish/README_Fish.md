# Fish

Vamos a estar usando fish como shell, para eso primero vamos a tener que instalarlo
```bash
# en debian
sudo apt install fish

# en fedora
sudo dnf install fish

# en arch
sudo pacman -S fish
```

## Configuracion

Toda la configuracion esta debajo del archivo `config.fish` en `.config/fish/`, ahi vamos a agregar lo siguiente:

### Editor

Vamos a setear nvim como editor, en la linea aparece como 
```shell
set EDITOR /usr/bin/nvim
```

En el caso de querer modificarlo, ahi esta, sino seguir la configuracion en [nvim](../nvim/README_Nvim.md).

Tambien tener en cuenta que lo estamos usando para el manpager, por lo que se deberia cambiar ahi tambien.

### Prompt
Para el prompt vamos a usar sashimi, que se puede encontrar en el siguiente [repo](https://github.com/isacikgoz/sashimi).

En este caso vamos a guardarlo bajo el directorio de `functions` en el archivo `prompt.fish`.
