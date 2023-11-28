### Dotfiles for [HyprlandWM](https://wiki.hyprland.org/Getting-Started/Installation/).

![wall](https://github.com/Gl00ria/dotfiles/assets/74514103/917e4899-c11b-4648-85e0-e8864eb37b3d)
![gbar_and_waybar](https://github.com/Gl00ria/dotfiles/assets/74514103/9a32f143-e85b-4274-bd90-42d4db0effea)
![rofi_notifications](https://github.com/Gl00ria/dotfiles/assets/74514103/121803ba-09b5-4688-af9b-1cdbff820e93)
![nvim](https://github.com/Gl00ria/dotfiles/assets/74514103/572d62ab-c2bf-4ee4-b747-035e45fa9c86)
![nf_cava_btop](https://github.com/Gl00ria/dotfiles/assets/74514103/f6ea595d-a0ce-4b97-af5c-128435470918)
![eww_settings](https://github.com/Gl00ria/dotfiles/assets/74514103/981b4f76-e527-4cdc-8835-6fca1644b49a)
![dashboard](https://github.com/Gl00ria/dotfiles/assets/74514103/5a1c9696-f8c0-4ce8-ade6-7e79c2389be7)

# Requirements:

| Package Name                                                                        | Description        | Package Manager |
| ----------------------------------------------------------------------------------- | ------------------ | --------------- |
| [hyprland](https://archlinux.org/packages/?name=hyprland)                           | window manager     | Pacman          |
| ~~[ hyprland-nvidia-git ](https://aur.archlinux.org/packages/hyprland-nvidia-git)~~ | ~~window manager~~ | ~~AUR~~         |

# F\*\*\* Nvidia:

<details>
<summary>Packages</summary>

| Package Name                                                                            | Description                                        | Package Manager |
| --------------------------------------------------------------------------------------- | -------------------------------------------------- | --------------- |
| [nvidia](https://archlinux.org/packages/extra/x86_64/nvidia/)                           | driver                                             | ~~Pacman~~      |
| ~~[ nvidia-dkms ](https://archlinux.org/packages/extra/x86_64/nvidia-dkms/)~~           | ~~drivers~~                                        | Pacman          |
| [ nvidia-utils ](https://archlinux.org/packages/extra/x86_64/nvidia-utils/)             | drivers Utils                                      | Pacman          |
| [ nvidia-prime ](https://archlinux.org/packages/extra/any/nvidia-prime/)                | nvidia offload                                     | Pacman          |
| [libva-nvidia-driver](https://archlinux.org/packages/extra/x86_64/libva-nvidia-driver/) | VA-API implementation that uses NVDEC as a backend | Pacman          |

  <br>

</details>

<details>
<summary>Steps</summary>
Add the following:

1. Add `nvidia_drm.modeset=1` to `GRUB_CMDLINE_LINUX_DEFAULT=` in `/etc/default/grub`
2. Run `sudo grub-mkconfig -o /boot/grub/grub.cfg`
3. Add `nvidia nvidia_modeset nvidia_uvm nvidia_drm` to `/etc/mkinitcpio.conf` then
   Generate new image: `sudo mkinitcpio --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img`
4. Add/create the following: `options nvidia-drm modeset=1` in `/etc/modprobe.d/nvidia.conf`
   <br>

</details>

<details>
<summary>glxinfo & nvidia-smi output</summary>

![231125_19h03m11s_screenshot](https://github.com/Gl00ria/dotfiles/assets/74514103/c1f29940-6572-414e-bff8-a7b70d817061)
![nvidia_smi](https://github.com/Gl00ria/dotfiles/assets/74514103/8239e107-f5fb-4ee3-8f07-2d09c0fee113)

  <br>

</details>

---

### Audio & Video:

<details>

| Package Name                                                                        | Description                | Package Manager |
| ----------------------------------------------------------------------------------- | -------------------------- | --------------- |
| [ pipewire ](https://archlinux.org/packages/extra/x86_64/pipewire/)                 | audio & video server       | Pacman          |
| [ pipewire-audio ](https://archlinux.org/packages/extra/x86_64/pipewire-audio/)     | audio plugin               | Pacman          |
| [ pipewire-alsa ](https://archlinux.org/packages/extra/x86_64/pipewire-alsa/)       | audio plugin               | Pacman          |
| [ pipewire-jack ](https://archlinux.org/packages/extra/x86_64/pipewire-jack/)       | audio plugin               | Pacman          |
| [ pipewire-pulse ](https://archlinux.org/packages/extra/x86_64/pipewire-pulse/)     | audio plugin               | Pacman          |
| [ wireplumber ](https://archlinux.org/packages/extra/x86_64/wireplumber/)           | audio & video server       | Pacman          |
| [ pavucontrol ](https://archlinux.org/packages/extra/x86_64/pavucontrol/)           | GUI audio settings         | Pacman          |
| [ pamixer ](https://archlinux.org/packages/extra/x86_64/pamixer/)                   | for waybar audio           | Pacman          |
| [ gst-plugin-pipewire ](https://aur.archlinux.org/packages/gst-plugin-pipewire-git) | Multimedia Graph Framework | AUR             |

  <br>

</details>

### Network:

<details>

| Package Name                                                                                    | Description          | Package Manager |
| ----------------------------------------------------------------------------------------------- | -------------------- | --------------- |
| [ networkmanager ](https://archlinux.org/packages/extra/x86_64/networkmanager/)                 | network manager      | Pacman          |
| [ network-manager-applet ](https://archlinux.org/packages/extra/x86_64/network-manager-applet/) | network manager tray | Pacman          |

  <br>

</details>

### Bluetooth:

<details>

| Package Name                                                              | Description                    | Package Manager |
| ------------------------------------------------------------------------- | ------------------------------ | --------------- |
| [ bluez ](https://archlinux.org/packages/extra/x86_64/bluez/)             | Daemons for bluetooth protocol | Pacman          |
| [ bluez-utils ](https://archlinux.org/packages/extra/x86_64/bluez-utils/) | utils for bluetooth            | Pacman          |
| [ blueman ](https://archlinux.org/packages/extra/x86_64/blueman/)         | bluetooth tray                 | Pacman          |

  <br>

</details>

### Login:

<details>

| Package Name                                                                                | Description               | Package Manager |
| ------------------------------------------------------------------------------------------- | ------------------------- | --------------- |
| [ sddm ](https://archlinux.org/packages/extra/x86_64/sddm/)                                 | display manager for login | Pacman          |
| [ qt5-wayland ](https://archlinux.org/packages/extra/x86_64/qt5-wayland/)                   | for QT wayland XDP        | Pacman          |
| [ qt6-wayland ](https://archlinux.org/packages/extra/x86_64/qt6-wayland/)                   | for QT wayland XDP        | Pacman          |
| [ qt5-quickcontrols ](https://archlinux.org/packages/extra/x86_64/qt5-quickcontrols/)       | for sddm theme            | Pacman          |
| [ qt5-quickcontrols2 ](https://archlinux.org/packages/extra/x86_64/qt5-quickcontrols2/)     | for sddm theme            | Pacman          |
| [ qt5-graphicaleffects ](https://archlinux.org/packages/extra/x86_64/qt5-graphicaleffects/) | for sddm theme            | Pacman          |

  <br>

</details>

### Notification:(Pick one & edit ~/.config/hypr/autostart)

<details>

| Package Name                                                  | Description         | Package Manager |
| ------------------------------------------------------------- | ------------------- | --------------- |
| [ dunst ](https://archlinux.org/packages/extra/x86_64/dunst/) | notification daemon | Pacman          |
| [ swaync ](https://aur.archlinux.org/packages/swaync)         | notification center | AUR             |

  <br>

</details>

### Screenshot:

<details>

| Package Name                                                        | Description                   | Package Manager |
| ------------------------------------------------------------------- | ----------------------------- | --------------- |
| [ slurp ](https://archlinux.org/packages/extra/x86_64/slurp/)       | selects region for screenshot | Pacman          |
| [ swappy ](https://archlinux.org/packages/extra/x86_64/swappy/)     | screenshot editor             | Pacman          |
| [ grimblast-git ](https://aur.archlinux.org/packages/grimblast-git) | screenshot tool               | AUR             |

  <br>

</details>

### Screensharing:

<details>

| Package Name                                                                                              | Description                    | Package Manager |
| --------------------------------------------------------------------------------------------------------- | ------------------------------ | --------------- |
| [ slurp ](https://archlinux.org/packages/extra/x86_64/slurp/)                                             | selects region for screenshare | Pacman          |
| [ xdg-desktop-portal-hyprland ](https://archlinux.org/packages/extra/x86_64/xdg-desktop-portal-hyprland/) | XDG Desktop Portal             | Pacman          |

  <br>

</details>

### Clipboard:

<details>
| Package Name                                                                    | Description       | Package Manager |
| ------------------------------------------------------------------------------- | ----------------- | --------------- |
| [ cliphist ](https://archlinux.org/packages/extra/x86_64/cliphist/)             | clipboard manager | Pacman          |
| ~~[ wl-clipboard ](https://archlinux.org/packages/extra/x86_64/wl-clipboard/)~~ | clipboard manager | Pacman          |

  <br>

</details>

### Utils:

<details>

| Package Name                                                                        | Description                                                       | Package Manager                                                     |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------- |
| [ grub ](https://archlinux.org/packages/core/x86_64/grub/)                          | Bootloader                                                        | Pacman                                                              |
| [ grub-btrfs ](https://archlinux.org/packages/extra/any/grub-btrfs/)                | include btrfs snapshots in grub options                           | Pacman                                                              |
| [ timeshift ](https://archlinux.org/packages/extra/x86_64/timeshift/)               | system snapshots                                                  | Pacman                                                              |
| [ polkit-kde-agent ](https://archlinux.org/packages/extra/x86_64/polkit-kde-agent/) | KDE's authentication agent                                        | Pacman                                                              |
| ~~[ polkit-gnome ](https://archlinux.org/packages/extra/x86_64/polkit-gnome/)~~     | Gnome's authentication agent                                      | Pacman                                                              |
| [ parallel ](https://archlinux.org/packages/extra/any/parallel/)                    | for parallel processing                                           | Pacman                                                              |
| [ jq ](https://archlinux.org/packages/extra/x86_64/jq/)                             | to read json files                                                | Pacman                                                              |
| [ gojq ](https://aur.archlinux.org/packages/gojq)                                   | same as above written in GO                                       | AUR                                                                 |
| [ swayosd-git ](https://aur.archlinux.org/packages/swayosd-git)                     | common actions like volume & capslock                             | AUR                                                                 |
| [ btop ](https://archlinux.org/packages/extra/x86_64/btop/)                         | resources monitor                                                 | Pacman                                                              |
| [ncdu](https://archlinux.org/packages/extra/x86_64/ncdu/)                           | disk usage analyzer                                               | Pacman                                                              |
| [ nvtop ](https://archlinux.org/packages/extra/x86_64/nvtop/)                       | GPUs process monitor (AMD, INTEL & F\*\*\* NVIDIA)                | Pacman                                                              |
| [ cpupower-gui ](https://aur.archlinux.org/packages/cpupower-gui)                   | change the frequency limits of the cpu & its governor             | AUR                                                                 |
| [ mission-center ](https://aur.archlinux.org/packages/mission-center)               | monitor the (CPU, Memory, Disk, Network, & GPU usage)             | AUR                                                                 |
| [ hyprshade ](https://aur.archlinux.org/packages/hyprshade)                         | frontend to Hyprland's screen shader feature                      | AUR                                                                 |
| ~~[ swayidle ](https://archlinux.org/packages/extra/x86_64/swayidle/)~~             | idle management daemon                                            | Pacman                                                              |
| ~~[ iwgtk ](https://aur.archlinux.org/packages/iwgtk)~~                             | GUI app for wireless networking                                   | AUR                                                                 |
| nerd fonts                                                                          | included in "~/.local/share/fonts/"                               | [see my script as a bounus](https://github.com/Gl00ria/FontsL00ria) |
| [ lsd ](https://archlinux.org/packages/extra/x86_64/lsd/)                           | alternative to the "ls" command                                   | Pacman                                                              |
| [ bat ](https://archlinux.org/packages/extra/x86_64/bat/)                           | alternative to the "cat" command                                  | Pacman                                                              |
| [ ripgrep ](https://archlinux.org/packages/extra/x86_64/ripgrep/)                   | alternative to the "grep" command                                 | Pacman                                                              |
| [ fd ](https://archlinux.org/packages/extra/x86_64/fd/)                             | alternative to the "find" command                                 | Pacman                                                              |
| [ fzf ](https://archlinux.org/packages/extra/x86_64/fzf/)                           | fuzzy finder                                                      | Pacman                                                              |
| ~~[ gamemode ](https://archlinux.org/packages/extra/x86_64/gamemode/)~~             | not a gamer, but worth the reference                              | Pacman                                                              |
| [ geticons ](https://aur.archlinux.org/packages/geticons)                           | Get icons for apps on your system or other generic icons by name  | AUR                                                                 |
| [ libinput-gestures ](https://aur.archlinux.org/packages/libinput-gestures)         | Actions Gestures for the touchpad                                 | AUR                                                                 |
| [ neofetch ](https://archlinux.org/packages/extra/any/neofetch/)                    | system info                                                       | Pacman                                                              |
| [pyprland](https://github.com/hyprland-community/pyprland)                          | Scratchpads,smart monitor placement and other tweaks for hyprland | AUR                                                                 |

    <br>

</details>

### Brightness:

<details>

| Package Name                                                                  | Description        | Package Manager |
| ----------------------------------------------------------------------------- | ------------------ | --------------- |
| [ brightnessctl ](https://archlinux.org/packages/extra/x86_64/brightnessctl/) | brightness control | Pacman          |
| [ light ](https://archlinux.org/packages/extra/x86_64/light/)                 | brightness control | Pacman          |

  <br>

</details>

### Theming:

<details>

| Package Name                                                      | Description      | Package Manager |
| ----------------------------------------------------------------- | ---------------- | --------------- |
| [ kvantum ](https://archlinux.org/packages/extra/x86_64/kvantum/) | theming QT apps  | Pacman          |
| [ qt5ct ](https://archlinux.org/packages/extra/x86_64/qt5ct/)     | theming QT5 apps | Pacman          |
| [ nwg-look ](https://aur.archlinux.org/packages/nwg-look)         | theming GTK apps | AUR             |

  <br>

</details>

### Apps:

<details>

| Package Name                                                                                                          | Description                    | Package Manager |
| --------------------------------------------------------------------------------------------------------------------- | ------------------------------ | --------------- |
| [ firefox ](https://archlinux.org/packages/extra/x86_64/firefox/)                                                     | browser                        | Pacman          |
| [ kitty ](https://archlinux.org/packages/extra/x86_64/kitty/)                                                         | terminal                       | Pacman          |
| [ nemo ](https://archlinux.org/packages/extra/x86_64/nemo/)                                                           | file manager                   | Pacman          |
| [ ranger ](https://archlinux.org/packages/extra/any/ranger/)                                                          | terminal file manager          | Pacman          |
| [ ueberzug ](https://archlinux.org/packages/extra/x86_64/ueberzug/)                                                   | for ranger to display images   | Pacman          |
| [ neovim ](https://archlinux.org/packages/extra/x86_64/neovim/), My config is [here](https://github.com/Gl00ria/nvim) | text editor/PDE                | Pacman          |
| [ neovide ](https://archlinux.org/packages/extra/x86_64/neovide/)                                                     | GUI for neovim                 | Pacman          |
| [ lazygit ](https://archlinux.org/packages/extra/x86_64/lazygit/)                                                     | terminal UI for git commands   | Pacman          |
| [ OBS-Studio ](https://archlinux.org/packages/extra/x86_64/obs-studio/)                                               | Video recording & steaming app | Pacman          |
| ~~[ wofi ](https://archlinux.org/packages/extra/x86_64/wofi/)~~                                                       | app launcher                   | Pacman          |
| [ rofi-lbonn-wayland-git ](https://aur.archlinux.org/packages/rofi-lbonn-wayland-git)                                 | app launcher                   | AUR             |
| [ waybar-hyprland ](https://aur.archlinux.org/packages/waybar-hyprland)                                               | status bar                     | AUR             |
| [gbar-git](https://aur.archlinux.org/packages/gbar-git)                                                               | anoter status bar              | AUR             |
| [ wpaperd ](https://aur.archlinux.org/packages/wpaperd)                                                               | wallpaper app                  | AUR             |
| [ swaylock-effects-git ](https://aur.archlinux.org/packages/swaylock-effects-git)                                     | lockscreen                     | AUR             |
| ~~[swaylockd](https://github.com/jirutka/swaylockd)~~                                                                 | Launcher for swaylock          | see the link    |
| [ wlogout ](https://aur.archlinux.org/packages/wlogout)                                                               | logout screen                  | AUR             |
| [ hyprpicker-git ](https://aur.archlinux.org/packages/hyprpicker-git)                                                 | Color Picker                   | AUR             |
| [ cava ](https://aur.archlinux.org/packages/cava)                                                                     | Audio Visualizer               | AUR             |
| [ ~~tty-clock~~ ](https://aur.archlinux.org/packages/tty-clock)                                                       | Terminal Clock                 | AUR             |
| [ eww-wayland ](https://aur.archlinux.org/packages/eww-wayland)                                                       | Elkowars Wacky Widgets         | AUR             |
| [rhythmbox](https://archlinux.org/packages/extra/x86_64/rhythmbox/)                                                   | music player                   | Pacman          |

  <br>

</details>

### Shells:

<details>

| Package Name                                                                                                      | Description            | Package Manager |
| ----------------------------------------------------------------------------------------------------------------- | ---------------------- | --------------- |
| [ zsh ](https://archlinux.org/packages/extra/x86_64/zsh/)                                                         | main shell             | Pacman          |
| bash                                                                                                              |                        | oh C'mon :)     |
| [ fish ](https://archlinux.org/packages/extra/x86_64/fish/) with [Fisher](https://github.com/jorgebucaran/fisher) | Fisher: Plugin manager | Pacman          |
| [ starship ](https://archlinux.org/packages/extra/x86_64/starship/)                                               | default shell prompt   | Pacman          |

NOTE_1:

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) &

[powerlevel10k-theme](https://github.com/romkatv/powerlevel10k)
are available and configured for ZSH as well.

NOTE_2: zsh plugins (AUR):

- [zsh-autosuggestions-git](https://aur.archlinux.org/packages/zsh-autosuggestions-git)
- [zsh-fast-syntax-highlighting](https://aur.archlinux.org/packages/zsh-fast-syntax-highlighting)
- [forgit](https://aur.archlinux.org/packages/forgit)

  <br>

</details>

---

### Optional:

<details>

### SDDM theme: [boo-sddm](https://github.com/PROxZIMA/boo-sddm)

```
git clone https://github.com/PROxZIMA/boo-sddm.git
cd boo-sddm
sudo cp -r boo /usr/share/sddm/themes/
sudo vim /etc/sddm.conf
### Add 'boo' to 'Theme.Current' in '/etc/sddm.conf'
sudo vim /etc/sddm.conf
```

### GRUB theme, Choose one:

- [Top-5-Bootloader-Themes](https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes)
- [Boo](https://github.com/PROxZIMA/boo-grub)

  <br>

</details>

---

# Keymaps/Keybinds or WHATEVER:

<details>

### windows/workspaces:

| Key                          | Description                                |
| ---------------------------- | ------------------------------------------ |
| super + space                | toggle floating                            |
| alt + return                 | toogle fullscreen (without hiding the bar) |
| super + ctrl + f             | toggle fullscreen (with hiding the bar)    |
| super + ctrl + c             | centerwindow                               |
| super + ctrl + p             | dwindle (pseudo)                           |
| super + ctrl + s             | dwindle (togglesplit)                      |
| super + CTRL + G             | toggle group                               |
| alt + tab                    | cyclenext                                  |
|                              |                                            |
| **windows movements**        |                                            |
| ctrl + alt + n               | move window left                           |
| ctrl + alt + r               | move winodw right                          |
| ctrl + alt + u               | move window up                             |
| ctrl + alt d                 | move window down                           |
| **windows focus**            |                                            |
| ctrl + alt + h               | move focus left                            |
| ctrl + alt + l               | move focus right                           |
| ctrl + alt + k               | move focus up                              |
| ctrl + alt + j               | move focus down                            |
|                              |                                            |
| **workspaces same as KDE**   |                                            |
| alt + 1                      | 1st workspace                              |
| alt + 2                      | 2nd workspace                              |
| alt + 3                      | 3rd workspace                              |
| alt + 4                      | 4th workspace                              |
| alt + 5                      | 5th workspace                              |
| super + scroll mouse up      | next workspace                             |
| super + scroll mouse down    | previous workspace                         |
|                              |                                            |
| **move window to workspace** |                                            |
| ctrl + alt + 1               | move to workspace 1                        |
| ctrl + alt + 2               | move to workspace 2                        |
| ctrl + alt + 3               | move to workspace 3                        |
| ctrl + alt + 4               | move to workspace 4                        |
| ctrl + alt + 5               | move to workspace 5                        |
| ctrl + alt + 6               | move to workspace 6                        |
| ctrl + alt + 7               | move to workspace 7                        |
| ctrl + alt + 8               | move to workspace 8                        |
| ctrl + alt + 9               | move to workspace 9                        |
|                              |                                            |

### Apps:

| Key                 | Description                |
| ------------------- | -------------------------- |
| alt + q             | kill active window         |
| super + escape      | kill hyprland session      |
| super + return      | terminal (kitty)           |
| super + l           | wlogout                    |
| super + w           | toggle waybar              |
| super + g           | toggle gbar                |
| ctrl + alt + delete | open btop                  |
| alt + space         | launch app                 |
| super + tab         | switch between opened apps |
| super + shift + t   | select theme menu          |
| super + shift + m   | select rofi style          |
| super + shift + w   | select wallpaper menu      |
| super + shift + v   | open clipboard             |
| super + shift + f   | browse file files          |

### Screenshot:

| Key                | Description                |
| ------------------ | -------------------------- |
| ctrl + alt + print | screenshot all monitors    |
| print              | screenshot current monitor |
| shift + print      | select region              |

### Eww specific:

| Key              | Description        |
| ---------------- | ------------------ |
| super + ctrl + e | start eww's daemon |
| super + ctrl + o | open settings      |
| super + ctrl + d | open dashboard     |

### Media control:

| Key_1             | Special key          | Description    |
| ----------------- | -------------------- | -------------- |
| super + shift + n | XF86AudioNext        | next music     |
| super + shift + b | XF86AudioPrev        | previous music |
| super + shift + p | XF86AudioPause       | pause          |
| ------            | XF86AudioPlay        | play           |
| ------            | XF86AudioRaiseVolume | volume up      |
| ------            | XF86AudioLowerVolume | volume down    |
| ------            | XF86AudioMute        | mute speaker   |
| ------            | XF86AudioMicMute     | mute mic       |

### Media control:

| Key_1  | Special key           | Description     |
| ------ | --------------------- | --------------- |
| ------ | XF86MonBrightnessUp   | brightness up   |
| ------ | XF86MonBrightnessDown | brightness down |

### waybar specific:

| Icon (from left to right)  | Action                | Description                          |
| -------------------------- | --------------------- | ------------------------------------ |
| drop                       | left click            | app launcher                         |
| drop                       | right click           | switch between opend apps            |
| ------                     | --------------------- | ---------------                      |
| package                    | left click            | update packages (arch based destors) |
| ------                     | --------------------- | ---------------                      |
| computer (cpu)             | left click            | open mission-center                  |
| computer (cpu)             | right click           | btop                                 |
| ------                     | --------------------- | ---------------                      |
| gpu                        | left click            | open mission-center                  |
| gpu                        | right click           | nvidia-smi                           |
| ------                     | --------------------- | ---------------                      |
| memory                     | left click            | open mission-center                  |
| memory                     | right click           | btop                                 |
| ------                     | --------------------- | ---------------                      |
| temperature                | N/A                   | N/A                                  |
| ------                     | --------------------- | ---------------                      |
| disk                       | left click            | change display format                |
| disk                       | right click           | ncdu                                 |
| ------                     | --------------------- | ---------------                      |
| IP                         | left click            | change display format                |
| IP                         | right click           | open nm-connection-editor            |
| ------                     | --------------------- | ---------------                      |
| workspaces                 | scroll up             | next workspace                       |
| workspace                  | scroll down           | previous workspace                   |
| ------                     | --------------------- | ---------------                      |
| speaker                    | scroll up             | volume up                            |
| speaker                    | scroll down           | volume down                          |
| speaker                    | left click            | pavucontrol                          |
| ------                     | --------------------- | ---------------                      |
| brightness (sun/moon) icon | scroll up             | brightness up                        |
| brightness (sun/moon) icon | scroll down           | brightness down                      |
| brightness (sun/moon) icon | left click            | hyprshade toggle extradark           |
| brightness (sun/moon) icon | right click           | hyprshade toggle blufilter           |
| ------                     | --------------------- | ---------------                      |
| battary                    | left click            | cpupower-gui                         |
| ------                     | --------------------- | ---------------                      |
| notification               | left click            | open notification center             |
| notification               | right click           | DON NOT DUSTURB                      |
| ------                     | --------------------- | ---------------                      |
| tray                       | depends               | depends                              |
| ------                     | --------------------- | ---------------                      |
| time/calendar              | left click            | change display format                |
| ------                     | --------------------- | ---------------                      |
| weather                    | left click            | next wallpaper                       |
| ------                     | --------------------- | ---------------                      |
| power                      | left click            | wlogout                              |

### pyprland specific:

| Key       | Description                          |
| --------- | ------------------------------------ |
| super + t | toggle terminal                      |
| super + f | toggle file manager (nemo)           |
| super + c | toggle cava                          |
| super + m | toggle music player (rhythmbox)      |
| super + v | tooggle volume control (pavucontrol) |
| super + n | newtork manager                      |
| super + b | toggle bluetooth manager (blueman)   |

  <br>
</details>

---

# How to?

<details>

Please note this is my personal dotfiles, meaning read the Nvidia & Apps requirements since you might not need some of them or might be already installed on your system. Also note that this repo has two different configurations, one for KDE & the other for hyprland, Most probably you are here for the hyprland config, so let's get started:

1. clone the repo & cd to into it _this will take time_:

```
cd ~/Downloads
git clone https://github.com/Gl00ria/dotfiles
cd dotfiles
```

2. Remove the KDE dotfiles:

```
rm -r dot_kde
```

3. Copy the icons & themes folders to your HOME:

```
cp -r .icons /home/user_name/
cp -r .themes /home/user_name/
```

4. Copy the fonts to your fonts directory:

```
cp -r .local/share/fonts/* ~/.local/share/fonts/
```

5. Copy the wallpapers to your Picture directory:

```
cp -r Pictures/SlideShow ~/Pictures
```

6. Backup your .config then copy the new config:

```
mv ~/.config ~/.config_backup
mv dot_hyprland ~/.config
```

So far should work now, enjoy.

---

### Bounus if you want the shell config:

1. Back up your .bashrc & .zshrc

```
mv ~/.bashrc ~/.bashrc_backup
mv ~/.zshrc ~/.zshrc_backup
```

2. have the new bashrc & zshrc

```
cp .bashrc /home/user_name
cp .zshrc /home/user_name
```

  <br>

</details>

---

### Credits:

- [Hyprland](https://hyprland.org/): for this great WM, but Ahhh NVIDIA...... :(
- [prasanthrangan](https://github.com/prasanthrangan/hyprdots/tree/main): for rofi's implementation
- [end-4](https://github.com/end-4/dots-hyprland/tree/hybrid): for eww's implementation
- [ChrisTitusTech](https://github.com/ChrisTitusTech/) & [PROxZIMA](https://github.com/PROxZIMA/): for GRUB themes implementation
