# config_wizard
Va a ser mi forma de tener todas mis configuraciones en un solo lugar y poder installar todo lo necesario

La forma inicial de mover la configuracion a la ventana correspondiente es usando gnu-stow que se instala usando:
```bash
# en debian
sudo apt install stow

# en fedora
sudo dnf install stow

# en arch
sudo -Ss stow
```

Cuando ejecutemos en comando:
```bash
stow path/al/directorio
```

Generara softlinks a todos los archivos de ese directorio, en el directorio padre en el que se ejecuto el comando.

En el caso de que queramos ignorar directorios o archivos, mas alla de los defaults, se puede crear un `.stow-local-ignore`.
