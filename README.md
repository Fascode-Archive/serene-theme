<img src="../images/serene-logo.svg" alt="Serene logo" align="right" />

# Serene theme

**Serene theme** is a [Material Design](https://material.io) theme .

It supports GTK 2, GTK 3, GNOME Shell, Budgie, Cinnamon, MATE, Unity, Xfce, LightDM, GDM, Chrome theme, etc.

## Preview

![widget-factory](../images/widget-factory.png?raw=true)

## Features

**Ripple effect** animations for GTK 3 are supported:

![Button](../images/Button.gif?raw=true)

**3 color variants** and **2 size variants** are available:

**Serene** | **standard** | **compact**
:-: | :-: | :-:
**standard** | ![Serene][1] | ![Serene-compact][2]
**dark** | ![Serene-dark][3] | ![Serene-dark-compact][4]
**light** | ![Serene-light][5] | ![Serene-light-compact][6]

[1]: ../images/Serene.png?raw=true
[2]: ../images/Serene-compact.png?raw=true
[3]: ../images/Serene-dark.png?raw=true
[4]: ../images/Serene-dark-compact.png?raw=true
[5]: ../images/Serene-light.png?raw=true
[6]: ../images/Serene-light-compact.png?raw=true

Various **desktop environments** are supported:

- GNOME Shell `>=3.18`
- Budgie `>=10.4`
- Cinnamon `>=3.x`
- MATE `>=1.14`
- Unity `>=7.4`
- Xfce `>=4.13`

## Requirements

- GTK `>=3.20`
- `gnome-themes-extra` (or `gnome-themes-standard`)
- Murrine engine — The package name depends on the distro.
  - `gtk-engine-murrine` on Arch Linux
  - `gtk-murrine-engine` on Fedora
  - `gtk2-engine-murrine` on openSUSE
  - `gtk2-engines-murrine` on Debian, Ubuntu, etc.
- `bc` — build dependency

## Installation

### Manual Installation

Run the following commands in the terminal:

```sh
git clone --depth 1 https://github.com/yamad-linuxer/serene-theme
cd serene-theme
sudo ./install.sh
```

Tip: `./install.sh` allows the following options:

```
-d, --dest DIR          Specify destination directory (Default: /usr/share/themes)
-n, --name NAME         Specify theme name (Default: Serene)
-c, --color VARIANT...  Specify color variant(s) [standard|dark|light] (Default: All variants)
-s, --size VARIANT      Specify size variant [standard|compact] (Default: All variants)
-g, --gdm               Install and apply GDM theme (for advanced users)
-h, --help              Show help
```

### Manual Uninstallation

Delete the installed directories:

```sh
sudo rm -rf /usr/share/themes/Serene{,-dark,-light}{,-compact}
```

## Recommendations

### Font

- To properly display the theme, use a font family including **Medium** weight (e.g. [Roboto](https://github.com/google/roboto) or [M+](https://mplus-fonts.osdn.jp)).
- Set the font size to `9.75` or `10.5` (i.e. 13px or 14px at 96dpi).

### Chrome Theme

To use the Chrome theme;

1. Open the `chrome` folder on `/usr/share/themes/Serene<-variant>`.
2. Drag and drop the `.crx` files into the Chrome/Chromium Extensions page (`chrome://extensions`).

### GDM Theme

You can change the GDM (lock/login screen) theme by replacing the default GNOME Shell theme.  
See [`gnome-shell/README.md`](src/gnome-shell/README.md) for details.

## License

Serene is distributed under the terms of the GNU General Public License, version 2 or later. See the [`LICENSE`](LICENSE) file for details.

## Credits

- Serene theme is based on [Materia](https://github.com/nana-4/materia-theme) by nana-4.
- Design and specifications are based on Google's [Material Design](https://material.io).

Also thank you to all contributors and upstream developers.
