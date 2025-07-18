# ThinkPad P50 Config

This is my personal laptop config file. The configurations under this directory
is not intended to _rice_ your desktop. Maybe this dotfiles repo is one of most
boring desktop you ever see, trust me! No compositor, no transparency, no
animation, nothing. Just basic BSPWM with polybar plus my most used app config.

I put my configs and scripts here for my self, to make me easier moving my
machine to the new one if something bad happen to my beloved laptop. But,
if you find it useful for you, just clone and edit to fit with your need.

> This repo is far from complete, I'll update this repo during my spare time.

TLDR; required packages for this machine running X:

```
xorg-server xorg-xrandr xorg-xinit org-xset org-xsetroot \
mesa nvidia nvidia-utils \
xbindkeys bspwm sxhkd \
alacritty polybar ttf-jetbrains-mono-nerd ttf-font-awesome
```

For list of explicity installed packages (both from official or AUR), see
[PKGS/pacman-Qqe.txt][pacman-Qqe]. For explicity installed packages from AUR
only, see [PKGS/pacman-Qqme.txt][pacman-Qqme].

## Software

- Boot loader : [GRUB][grub_aw] | ([config][grub_cfg]).
- WM: `bspwm` | [Bspwm Arch Wiki][bspwm_aw] | [Sxhkd Arch Wiki][sxhkd_aw].
- Status bar: `polybar` | [GitHub][polybar_gh].

### Shell & Terminal

- vanilla `zsh` | [zsh.org](https://www.zsh.org/) | [Zsh Arch Wiki](https://wiki.archlinux.org/title/Zsh).
- `alacritty` terminal | [github.com/alacritty/alacritty](https://github.com/alacritty/alacritty) | [Arch Wiki](https://wiki.archlinux.org/title/Alacritty).
- `tmux` terminal multiplexer | [github.com/tmux/tmux/wiki](https://github.com/tmux/tmux/wiki) | [tmux Arch Wiki](https://wiki.archlinux.org/title/Tmux).

### Editors

- `vim` | [vim.org](https://www.vim.org/) | [Vim Arch Wiki](https://wiki.archlinux.org/title/Vim).
- `nvim` ([config](./home/ditatompel/.config/nvim)) | [neovim.io](https://neovim.io/) | [NeoVim Arch Wiki](https://wiki.archlinux.org/title/Neovim).

### Utilities

- `imagemagick` or `flameshot` for screenshot. | [ImageMagick Arch Wiki][imagemagick_aw] | [flameshot.org](https://flameshot.org/) | [Flameshot Arch Wiki](https://wiki.archlinux.org/title/Flameshot).

[pacman-Qqe]: ./PKGS/pacman-Qqe.txt "Output of pacman -Qqe"
[pacman-Qqme]: ./PKGS/pacman-Qqme.txt "Output of pacman -Qqme"
[grub_aw]: https://wiki.archlinux.org/title/GRUB "GRUB Arch Wiki"
[grub_cfg]: ./etc/default/grub "GRUB configuration file"
[bspwm_aw]: https://wiki.archlinux.org/title/Bspwm "Bspwm Arch Wiki"
[sxhkd_aw]: https://wiki.archlinux.org/title/Sxhkd "Sxhkd Arch Wiki"
[polybar_gh]: https://github.com/polybar/polybar "Polybar GitHub"
[imagemagick_aw]: https://wiki.archlinux.org/title/ImageMagick "ImageMagick Arch Wiki"
