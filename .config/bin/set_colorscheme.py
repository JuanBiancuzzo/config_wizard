import sys

cssColors = "colors.css"
hyprColors = "colors_hypr.conf"
rofiColors = "colors_rofi.rasi"

def createCssFile(fileName, colors):
    file = open(fileName, "w")
    for colorName in colors:
        color = colors[colorName]

        line = f"@define-color {colorName} {color};\n"
        file.write(line)

    file.close()
    return fileName

def createHyprFile(fileName, colors):
    file = open(fileName, "w")
    for colorName in colors:
        color = colors[colorName][1:]

        line = f"${colorName} = rgb({color})\n"
        file.write(line)

    file.close()
    return fileName

def createRofiFile(fileName, colors):
    file = open(fileName, "w")
    file.write("* {\n")
    for colorName in colors:
        color = colors[colorName]

        line = f"\t{colorName}: {color};\n"
        file.write(line)

    file.write("}\n")
    file.close()
    return fileName

def createColorscheme(fileName):
    file = open(fileName, "r")
    colorscheme = {}

    index = 0
    for color in file:
        colorscheme[f"color{index}"] = color.strip()
        index += 1

    colorscheme["foreground"] = colorscheme["color7"]
    colorscheme["background"] = colorscheme["color0"]
    colorscheme["cursor"] = colorscheme["color7"]
    colorscheme["border"] = "#FFFFFF"

    file.close()

    return colorscheme

def main(nombreArchivo):
    colorscheme = createColorscheme(nombreArchivo)
    print(createCssFile(cssColors, colorscheme))
    print(createHyprFile(hyprColors, colorscheme))
    print(createRofiFile(rofiColors, colorscheme))

if __name__ == "__main__":
    if len(sys.argv) > 1:
        main(sys.argv[1])
