# Sway

Vamos a usar sway como window manager, para eso tenemos que instalarlo, usando
```bash
# en debian
sudo apt install sway swaybg polkit wofi waybar

# en fedora
sudo dnf install sway swaybg polkit wofi waybar

# en arch
sudo pacman -S sway swaybg polkit wofi waybar
```

## Configuracion

Usando otros paquetes para customizar el funcionamiento de sway
 * swaybg es para
 * polkit es para
 * wofi va a ser usado como launcher
 * waybar va a ser la barra de estado 

Vamos a setear una font para sway, va a estar en la carpeta .fonts, y cualquier cambio puede verse en ese lugar. 

Agregando la linea 
```
font pango: <font-name> <font-size>
```

Nos deja modificar la font, si la encuentra en la carpeta de .fonts, en este caso vamos a usar la font llamada 'System San Francisco Display'

### Launcher

Vamos a usar wofi, que es muy similar a rofi, por lo que cambiaremos la configuracion para que aparezca wofi
```
set $menu wofi --show run
```

### Barra de estado

Vamos a usar waybar como remplazo de la barra de estado por defecto, y agregaremos a la configuracion
```
bar {
    swaybar_command waybar
}
```

Podemos seguir configurandolo como aparece en su [readme](../waybar/README_Waybar.md).
