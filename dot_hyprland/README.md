### Dotfiles for [HyprlandWM](https://wiki.hyprland.org/Getting-Started/Installation/).

![hyprland](https://github.com/Gl00ria/dotfiles/assets/74514103/8f3ae6d1-ac6a-4317-8bef-b95d2326f6ca)


# Requirements

### Main:

- [base-devel](https://archlinux.org/packages/core/any/base-devel/): Basic tools to build Arch Linux packages.
- [YaY](https://github.com/Jguer/yay): AUR helper.
- [hyprland-git](https://aur.archlinux.org/packages/hyprland-git): Tiling Wayland compositor.
- [waybar-hyprland](https://aur.archlinux.org/packages/waybar-hyprland): Wayland bar.
- [kitty Terminal](https://github.com/kovidgoyal/kitty): Terminal.
- [wofi](https://github.com/uncomfyhalomacro/wofi): Launcher/Menu program. NOTE: Consider and alternative.
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard): Clipboard.
- [cliphist-bin-](https://github.com/sentriz/cliphist): Clipboard manager.
- [swaync](https://github.com/ErikReider/SwayNotificationCenter): Notification Center.
- [swaylock-effects-git](https://github.com/mortie/swaylock-effects): Screen Lock Utility.
- [swaylockd](https://github.com/jirutka/swaylockd): Launcher for swaylock.
- [pavucontrol](https://aur.archlinux.org/packages/pavucontrol-git): GTK Volume Control.
- [btop](https://github.com/aristocratos/btop): Resources Monitor.
- [nvtop](https://github.com/Syllo/nvtop): GPUs process monitor (AMD, INTEL & NVIDIA).
- [blueman](https://github.com/blueman-project/blueman): GTK Bluetooth Manager.
- [network-manager-applet](https://aur.archlinux.org/packages/network-manager-applet-git): Applet for managing network connections.
- [iwgtk](https://github.com/J-Lentz/iwgtk): Wireless networking GUI.
- [brightnessctl](https://github.com/Hummer12007/brightnessctl): Control Brightness.
- UI framewoks: [qt5-base](https://aur.archlinux.org/packages/qt5-base-git), [qt5-wayland](https://aur.archlinux.org/packages/qt5-wayland-git), [qt6-base](https://aur.archlinux.org/packages/qt6-base-git), [qt6-wayland](https://archlinux.org/packages/extra/x86_64/qt6-wayland/).
- [ polkit-gnome ](https://aur.archlinux.org/packages/polkit-gnome-git): GNOME's Authentication agent.
- [wlogout](https://github.com/ArtsyMacaw/wlogout): Logout Menu.
- [sddm](https://github.com/sddm/sddm): Desktop Display Manager.
- [boo-sddm](https://github.com/PROxZIMA/boo-sddm): SDDM theme.
- [wpaperd](https://github.com/danyspin97/wpaperd): Wallpaper daemon for wayland.
- Shells:
  - [Bash](https://www.gnu.org/software/bash/).
  - [ZSH](https://sourceforge.net/p/zsh/code/ci/master/tree/).
  - [Fish](https://fishshell.com/) with [Fisher](https://github.com/jorgebucaran/fisher) as the plugins manager.
  - [Starship](https://starship.rs/) as the default shell prompt.
    NOTE:
    - [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) &
      [powerlevel10k-theme](https://github.com/romkatv/powerlevel10k)
      are available and configured for ZSH as well.
- [lsd](https://github.com/Peltoche/lsd): Alternative to the "ls" command.
- [bat](https://github.com/sharkdp/bat): Alternative to the "cat" command.
- [ripgrep](https://github.com/BurntSushi/ripgrep): Alternative to the "grep" command.
- [fd](https://github.com/sharkdp/fd): Alternative to the "find" command.
- [FZF](https://github.com/junegunn/fzf): Fuzzy Finder.
- [grimblast](https://github.com/hyprwm/contrib): Screenshot, wayland's version.
- [neofetch](https://github.com/dylanaraps/neofetch): System Info.
- [nvim](https://github.com/neovim/neovim): Editor/PDE. "My config is [here](https://github.com/Gl00ria/nvim)".
- [ranger](https://github.com/ranger/ranger) & [dolphin](https://wiki.archlinux.org/title/Dolphin): File managers.
- [nerd fonts](https://github.com/ryanoasis/nerd-fonts): NOTE: I keep changing my font over & over.
  - "See my font installation [script](https://github.com/Gl00ria/FontsL00ria)" to make things easier.

### Optional:

- [hyprpicker-git](https://github.com/hyprwm/hyprpicker): Color Picker.
- [cava](https://github.com/karlstav/cava): Audio Visualizer.
- [tty-clock](https://github.com/xorg62/tty-clock): Terminal Clock.
- [gamemode](https://aur.archlinux.org/packages/gamemode-git).
- [boo-grub](https://github.com/PROxZIMA/boo-grub): GRUB bootloader theme.
- [libinput-gestures](https://aur.archlinux.org/packages/libinput-gestures): Actions Gestures for the touchpad.
- [OBS-Studio](https://wiki.archlinux.org/title/Open_Broadcaster_Software): Video recording & steaming app.
- Screensharing:
  - [slurp](https://github.com/emersion/slurp).
  - [xdg-desktop-portal-hyprland](https://github.com/hyprwm/xdg-desktop-portal-hyprland).

### Themes & Icons:(Choose one)

- Tokyonight-night:

```
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo cp -r themes/Tokyonight-Dark-BL-LB /usr/share/themes/
```

- Tokyonight-Moon:

```
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo cp -r icons/Tokyonight-Moon /usr/share/icons/
```

### Cursor:

```
cd ~/Downloads
git clone https://github.com/EliverLara/Sweet.git -b nova
cd Sweet/
sudo cp -r kde/cursors/Sweet-cursors /usr/share/icons/
```

### SDDM: [boo-sddm](https://github.com/PROxZIMA/boo-sddm)

```
git clone https://github.com/PROxZIMA/boo-sddm.git
cd boo-sddm
sudo cp -r boo /usr/share/sddm/themes/
sudo vim /etc/sddm.conf
### Add 'boo' to 'Theme.Current' in '/etc/sddm.conf'
sudo vim /etc/sddm.conf
```
