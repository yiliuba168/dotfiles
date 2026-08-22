# ThinkPad P50 Config (Arch Linux)

This is my personal laptop config file. The configurations under this directory
is not intended to _rice_ your desktop. Maybe this dotfiles repo is one of most
boring desktop you ever see, trust me! No compositor, no transparency, no
animation, nothing. Just basic BSPWM with polybar plus my most used app config.

I put my configs and scripts here for my self, to make me easier moving my
machine to the new one if something bad happen to my beloved laptop. But,
if you find it useful for you, just clone and edit to fit with your need.

> This repo is far from complete, I'll update this repo during my spare time.

## System Hardware

- Board: ThinkPad P50 (20EQS44000)
- Processor: Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz
- GPU: NVIDIA Quadro M1000M 4GB (GM107GLM)
- Network:
  - Ethernet: 1GbE I219-LM
  - Wireless: Intel® Dual Band Wireless-AC 8260
- Keyboard: SN20M15446 (US Layout, with backlight)
- Battery: Lenovo 00NY491 (4 cells, 66000mWh, 15V)
- Memory: Dual Channel 64GB @ 2133 MT/s (downclocked)
  - ChannelA-DIMM0: 16GB SODIMM DDR4 2400 MT/s Samsung M471A2K43BB1-CRCQ
  - ChannelA-DIMM1: 16GB SODIMM DDR4 2400 MT/s Samsung M471A2K43BB1-CRCQ
  - ChannelB-DIMM0: 16GB SODIMM DDR4 2400 MT/s Samsung M471A2K43BB1-CRCQ
  - ChannelB-DIMM1: 16GB SODIMM DDR4 2400 MT/s Samsung M471A2K43BB1-CRCQ
- Disks:
  - NVMe0: Team MP33 PRO M.2 PCIe SSD 1TB
  - NVMe1: Samsung 256GB
  - SATA: 2.5" 500GB APPLE HDD HTS545050A7E362

## Software

TLDR; required packages for this machine running X:

```shell
xorg-server xorg-xrandr xorg-xinit xorg-xset xorg-xsetroot \
mesa nvidia nvidia-utils \
xbindkeys bspwm sxhkd \
alacritty polybar rofi ttf-jetbrains-mono-nerd ttf-font-awesome
```

For list of explicity installed packages (both from official or AUR), see
[PKGS/pacman-Qqe.txt][pacman-Qqe]. For explicity installed packages from AUR
only, see [PKGS/pacman-Qqme.txt][pacman-Qqme].

- Boot loader : [GRUB][grub_aw] | ([config][grub_cfg]).
- WM: `bspwm` | [Bspwm Arch Wiki][bspwm_aw] | [Sxhkd Arch Wiki][sxhkd_aw].
- Status bar: `polybar` | [GitHub][polybar_gh].

### Shell & Terminal

- vanilla `zsh` | [zsh.org][zsh-web] | [Zsh Arch Wiki][zsh-aw].
- `alacritty` terminal | [repo][alacritty-gh] | [Alacritty Arch Wiki][alacritty-aw].
- `tmux` terminal multiplexer | [tmux wiki][tmux-wiki] | [tmux Arch Wiki][tmux-aw].

### Editors

- `vim` | [vim.org][vim-web] | [Vim Arch Wiki][vim-aw].
- `nvim` ([config](./home/user/.config/nvim))
  | [neovim.io][nvim-web] | [NeoVim Arch Wiki][nvim-aw].

### Utilities

- `imagemagick` or `flameshot` for screenshot. |
  [ImageMagick Arch Wiki][imagemagick_aw] |
  [flameshot.org](https://flameshot.org/) |
  [Flameshot Arch Wiki](https://wiki.archlinux.org/title/Flameshot).

## hardware Topology

```plain
lstopo -.ascii
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ Machine (63GB total)                                                                                          │
│                                                                                                               │
│ ┌────────────────────────────────────────────────────────────────┐  ├┤╶─┬─────┼┤╶───────┬─────────────┐       │
│ │ Package L#0                                                    │      │16        16   │ PCI 01:00.0 │       │
│ │                                                                │      │               └─────────────┘       │
│ │ ┌────────────────────────────────────────────────────────────┐ │      │                                     │
│ │ │ NUMANode L#0 P#0 (63GB)                                    │ │      ├─────┬─────────────┐                 │
│ │ └────────────────────────────────────────────────────────────┘ │      │     │ PCI 00:02.0 │                 │
│ │                                                                │      │     └─────────────┘                 │
│ │ ┌────────────────────────────────────────────────────────────┐ │      │                                     │
│ │ │ L3 (8192KB)                                                │ │      ├─────┬───────────────┐               │
│ │ └────────────────────────────────────────────────────────────┘ │      │     │ PCI 00:17.0   │               │
│ │                                                                │      │     │               │               │
│ │ ┌────────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐ │      │     │ ┌───────────┐ │               │
│ │ │ L2 (256KB) │  │ L2 (256KB) │  │ L2 (256KB) │  │ L2 (256KB) │ │      │     │ │ Block sda │ │               │
│ │ └────────────┘  └────────────┘  └────────────┘  └────────────┘ │      │     │ │           │ │               │
│ │                                                                │      │     │ │ 465 GB    │ │               │
│ │ ┌────────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐ │      │     │ └───────────┘ │               │
│ │ │ L1d (32KB) │  │ L1d (32KB) │  │ L1d (32KB) │  │ L1d (32KB) │ │      │     └───────────────┘               │
│ │ └────────────┘  └────────────┘  └────────────┘  └────────────┘ │      │                                     │
│ │                                                                │      ├─────┼┤╶───────┬───────────────────┐ │
│ │ ┌────────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐ │      │3.9       3.9  │ PCI 02:00.0       │ │
│ │ │ L1i (32KB) │  │ L1i (32KB) │  │ L1i (32KB) │  │ L1i (32KB) │ │      │               │                   │ │
│ │ └────────────┘  └────────────┘  └────────────┘  └────────────┘ │      │               │ ┌───────────────┐ │ │
│ │                                                                │      │               │ │ Block nvme0n1 │ │ │
│ │ ┌────────────┐  ┌────────────┐  ┌────────────┐  ┌────────────┐ │      │               │ │               │ │ │
│ │ │ Core L#0   │  │ Core L#1   │  │ Core L#2   │  │ Core L#3   │ │      │               │ │ 238 GB        │ │ │
│ │ │            │  │            │  │            │  │            │ │      │               │ └───────────────┘ │ │
│ │ │ ┌────────┐ │  │ ┌────────┐ │  │ ┌────────┐ │  │ ┌────────┐ │ │      │               └───────────────────┘ │
│ │ │ │ PU L#0 │ │  │ │ PU L#2 │ │  │ │ PU L#4 │ │  │ │ PU L#6 │ │ │      │                                     │
│ │ │ │        │ │  │ │        │ │  │ │        │ │  │ │        │ │ │      ├─────┼┤╶───────┬────────────────┐    │
│ │ │ │  P#0   │ │  │ │  P#1   │ │  │ │  P#2   │ │  │ │  P#3   │ │ │      │0.2       0.2  │ PCI 04:00.0    │    │
│ │ │ └────────┘ │  │ └────────┘ │  │ └────────┘ │  │ └────────┘ │ │      │               │                │    │
│ │ │ ┌────────┐ │  │ ┌────────┐ │  │ ┌────────┐ │  │ ┌────────┐ │ │      │               │ ┌────────────┐ │    │
│ │ │ │ PU L#1 │ │  │ │ PU L#3 │ │  │ │ PU L#5 │ │  │ │ PU L#7 │ │ │      │               │ │ Net wlp4s0 │ │    │
│ │ │ │        │ │  │ │        │ │  │ │        │ │  │ │        │ │ │      │               │ └────────────┘ │    │
│ │ │ │  P#4   │ │  │ │  P#5   │ │  │ │  P#6   │ │  │ │  P#7   │ │ │      │               └────────────────┘    │
│ │ │ └────────┘ │  │ └────────┘ │  │ └────────┘ │  │ └────────┘ │ │      │                                     │
│ │ └────────────┘  └────────────┘  └────────────┘  └────────────┘ │      ├─────┼┤╶───────┬───────────────────┐ │
│ └────────────────────────────────────────────────────────────────┘      │3.9       3.9  │ PCI 3e:00.0       │ │
│                                                                         │               │                   │ │
│                                                                         │               │ ┌───────────────┐ │ │
│                                                                         │               │ │ Block nvme1n1 │ │ │
│                                                                         │               │ │               │ │ │
│                                                                         │               │ │ 953 GB        │ │ │
│                                                                         │               │ └───────────────┘ │ │
│                                                                         │               └───────────────────┘ │
│                                                                         │                                     │
│                                                                         └─────┬───────────────────┐           │
│                                                                               │ PCI 00:1f.6       │           │
│                                                                               │                   │           │
│                                                                               │ ┌───────────────┐ │           │
│                                                                               │ │ Net enp0s31f6 │ │           │
│                                                                               │ └───────────────┘ │           │
│                                                                               └───────────────────┘           │
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│ Host: p50                                                                                                     │
│                                                                                                               │
│ Date: Sat 22 Aug 2026 11:58:38 PM WIB                                                                         │
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
```

[alacritty-gh]: https://github.com/alacritty/alacritty "Alacritty GitHub Repo"
[alacritty-aw]: https://github.com/alacritty/alacritty "Alacritty Arch Wiki"
[tmux-wiki]: https://github.com/tmux/tmux/wiki "tmux GitHub Wiki"
[tmux-aw]: https://wiki.archlinux.org/title/Tmux "tmux Arch Wiki"
[pacman-Qqe]: ./PKGS/pacman-Qqe.txt "Output of pacman -Qqe"
[pacman-Qqme]: ./PKGS/pacman-Qqme.txt "Output of pacman -Qqme"
[grub_aw]: https://wiki.archlinux.org/title/GRUB "GRUB Arch Wiki"
[grub_cfg]: ./etc/default/grub "GRUB configuration file"
[bspwm_aw]: https://wiki.archlinux.org/title/Bspwm "Bspwm Arch Wiki"
[sxhkd_aw]: https://wiki.archlinux.org/title/Sxhkd "Sxhkd Arch Wiki"
[polybar_gh]: https://github.com/polybar/polybar "Polybar GitHub"
[imagemagick_aw]: https://wiki.archlinux.org/title/ImageMagick "ImageMagick Arch Wiki"
[zsh-web]: https://www.zsh.org/ "Zsh Website"
[zsh-aw]: https://wiki.archlinux.org/title/Zsh "Zsh Arch Wiki"
[vim-web]: https://www.vim.org/ "Vim Website"
[vim-aw]: https://wiki.archlinux.org/title/Vim "Vim Arch Wiki"
[nvim-web]: https://neovim.io/ "nvim Website"
[nvim-aw]: https://wiki.archlinux.org/title/Neovim "nvim Arch Wiki"
