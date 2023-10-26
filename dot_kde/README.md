# Dotfiles for [KDE-Plasma](https://kde.org/plasma-desktop/) & [BismuthWM](<(https://github.com/Bismuth-Forge/bismuth)>)

### Requirements:

- ##### DE: [KDE-Plasma](https://kde.org/plasma-desktop/)
- ##### WM: [Bismuth](https://github.com/Bismuth-Forge/bismuth) as the WM for KDE
- ##### Shells:
  - [Bash](https://www.gnu.org/software/bash/)
  - [ZSH](https://sourceforge.net/p/zsh/code/ci/master/tree/)
  - [Fish](https://fishshell.com/) with [Fisher](https://github.com/jorgebucaran/fisher) as the plugins manager
  - [Starship](https://starship.rs/) as my Default shell prompt.
    - NOTE: [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) & [powerlevel10k-theme](https://github.com/romkatv/powerlevel10k) are available & configured for ZSH as well.
- ##### Terminal Emulator: [Alacritty](https://github.com/alacritty/alacritty) OR [Kitty](https://github.com/kovidgoyal/kitty)
- ##### Status bars: [Polybar](https://github.com/polybar/polybar) & KDE's Default
- ##### Audio visualizer: [Cava](https://github.com/karlstav/cava)
- ##### Notification deamon: [Dunst](https://github.com/dunst-project/dunst)
- ##### File managers: [Ranger](https://github.com/ranger/ranger) & [Dolphin](https://apps.kde.org/dolphin/)
- ##### System Info: [Neofetch](https://github.com/dylanaraps/neofetch)
- ##### Editor: [Nvim](https://github.com/neovim/neovim), My [nvim-config](https://github.com/Gl00ria/nvim)'s here
- ##### FZY-Finder: [FZF](https://github.com/junegunn/fzf)
- ##### AUR-helper: [YaY](https://github.com/Jguer/yay)
- ##### Powermenu: [Rofi](https://github.com/davatorium/rofi)
- ##### Application launcher: [NavDexie](https://store.kde.org/p/1324206)
- ##### ls's alternative: [lsd](https://github.com/Peltoche/lsd)
- ##### Cat's alternative with wings: [Bat](https://github.com/sharkdp/bat)
- ##### [Ripgrep](https://github.com/BurntSushi/ripgrep)
- ##### Fonts:
  - ##### [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
    - Fira Code Nerd Font
    - Caskaydia Cove Nerd Font
    - Caskaydia Cove Nerd Font Mono
  - [FeatherIcons](https://github.com/feathericons/feather)
  - [Codicon](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf) 'optional'
    - See [My font installation script](https://github.com/Gl00ria/FontsL00ria) to make things easier.
    ##### OR if you are LAZY
    - Place the `Fonts` folder in `.local/share/fonts` then run `fc-cache`

### Optional:

- #### [pywal](https://github.com/dylanaraps/pywal): generate & change color-schemes based on the current wallpaper
- #### [znt](https://github.com/z-shell/zsh-navigation-tools): zsh-navigation-tools
- #### [delta](https://github.com/dandavison/delta): Syntax-highlighting pager for git and diff output
- #### [Btop](https://github.com/aristocratos/btop): resources monitor
- #### [ncdu](https://dev.yorhel.nl/ncdu): Disk usage analyzer

### Configs & Showcase:

- #### DE: [KDE-Plasma](https://kde.org/plasma-desktop/)
  - Global theme: Scratchy.
  - Plasma Style: Arch Round.
  - Colors: Scratchy.
  - Window Decorations: One Dark Aurorae 'Green'.
  - Fonts: CaskaydiaCove Nerd Font Mono 10pt.
  - Icons: [Dexie icons](https://github.com/adhec/Dexie-icons)
  - Cursors: Oxygen Yellow.
- #### Starship with different icons for different shells & extra icon shows-up when the root password's still cached

  - Bash, ZSH, FISH
    ![ prompt_icons ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/prompot_icons.png)
  - I'm groot
    ![ prompt_root ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/prompt_root.png)

- #### Alacritty & Kitty
  ![ terminals ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/terminals.png)
- #### Polybar & KDE's Default Status-bar
  ![ status-bars ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/status-bars.png)
- #### Cava within polybar
  ![ cava ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/cava.png)
- #### Dunst
  ![ dunst ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/dunst.png)
- #### Ranger & Dolphin
  ![ ranger_pic ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/ranger_pic.png)
  ![ ranger_txt ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/ranger_txt.png)
  ![ dolphine ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/dolphine.png)
- #### Neofetch
  ![ nf ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/nf.png)
- #### Nvim
  ![ nv_normal ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/nv_normal.png)
  ![ nv_transparent ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/nv_transparent.png)
- #### NavDexie
  ![ navDexi ](https://github.com/Gl00ria/Gl00riFiles/blob/main/Gl00riFiles/Gl00riFiles_Pics/navDexi.png)

# How to?

- create a folder in your $HOME directory

```
$ mkdir Gl00riFiles
```

- clone this repo as bare

```
$ git clone --bare https://github.com/Gl00ria/Gl00riFiles.git $HOME/Gl00riFiles
```

- define the alias in the current shell

```
$ alias gloorifiles='/usr/bin/git --git-dir=$HOME/Gl00riFiles/ --work-tree=$HOME'
```

- run this command if the alias is correctly placed in your shell

```
$ gloorifiles config --local status.showUntrackedFiles no
```

- checkout the content form the git repository to you $HOME

```
$ gloorifiles checkout
```

Have Fun!
