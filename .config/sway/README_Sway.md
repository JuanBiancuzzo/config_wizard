# Sway

Vamos a usar sway como window manager, para eso tenemos que instalarlo, usando
```bash
# en debian
sudo apt install sway swaybg foot polkit

# en fedora
sudo dnf install sway swaybg foot polkit

# en arch
sudo pacman -S sway swaybg foot polkit
```

Usando otros paquetes para customizar el funcionamiento de sway
 * swaybg es para
 * foot es para
 * polkit es para

Vamos a setear una font para sway, va a estar en la carpeta .fonts, y cualquier cambio puede verse en ese lugar. 

Agregando la linea 
```
font pango: <font-name> <font-size>
```

Nos deja modificar la font, si la encuentra en la carpeta de .fonts, en este caso vamos a usar la font llamada 'System San Francisco Display'

