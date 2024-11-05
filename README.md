# AutoBspwm
Bspwm autoconfiguration with polybar and sxhkd.
Tested in Kali Linux.

## Overview of the environment
![overview1](/images/img1.png "img1")
![overview1](/images/img2.png "img2")
## Installation
1. Install available updates.

```shell
sudo apt update
sudo apt upgrade -y
```

2. Clone the repository and navigate to it.

```shell
git clone https://github.com/superautentico/AutoBspwm.git
cd AutoBspwm
```

3. Grant execution permissions to the script.

```shell
chmod +x setup.sh
```

4. Execute the script.

```shell
./setup.sh
```
## [Shortcuts](/images/shortcuts.md)
## Settings
- Wallpapers: /pictures and change in /.config/bspwm/bspwmrc
- Change polybar name: /.config/polybar/current.ini
- Custom modules(change internet adapters):/.config/polybar/custom_modules ethernet_status.sh vpn_status.sh
- Vpn command config: /home/$USER/vpn/vpn.sh

## Credits
- This environment has been inspired by the functionalities of [S4vitar's](https://github.com/s4vitar) environment and [r1vs3c](https://github.com/r1vs3c) .
- Thanks to [Cube](https://github.com/ZLCube) for their contribution to the creation of the `archkali.png` wallpaper.

