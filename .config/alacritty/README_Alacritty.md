# Alacritty
Vamos a usar Alacritty como terminal inicial, por eso necesitamos instalar las dependencias
```bash
# en debian
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# en fedora
sudo dnf install cmake freetype-devel fontconfig-devel libxcb=devel libxkbcommon-devel g++

# en arch
sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python
```

Despues instalamos usando cargo
``` bash
cargo install alacritty
```
Ahora necesitamos mover el ejecutable al `/bin/`.

## Configuracion
La configuracion se encuentra en `alacritty.toml` y ahi vamos a poder settear la font que nosotros queramos, como tambien los colores

### Correr programa
Se puede agregar una seccion para ejecutar un programa, en nuestro caso vamos a usar [fish](../fish/README_Fish.md)

```toml
[shell]
program = "/bin/<programa>"
args = [<argumentos>]
```
