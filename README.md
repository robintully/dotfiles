# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Installation on Omarchy

### Prerequisites

- `chezmoi` installed on your system
- Git configured with access to this repository

### Install Base Packages

Before applying the dotfiles, install the required base packages:

```bash
yay -Syu \
  lunatask \
#   bitwarden-bin \
  celluloid-git \
  slack-desktop-wayland \
  todoist-wrapper-bin \
  ferdium-bin \
  gearlever \
  zed \
  chezmoi \
  bruno-bin \
  vivaldi
```
#### Configure UV for Python
```bash
mise use uv && mise settings experimental=true
```

### Quick Start

1. **Initialize chezmoi with this repository:**
   ```bash
   chezmoi init https://github.com/robintully/dotfiles.git
   ```

2. **Preview the changes that will be applied:**
   ```bash
   chezmoi diff
   ```

3. **Apply the dotfiles:**
   ```bash
   chezmoi apply -v
   ```

### Alternative: One-line Installation

```bash
chezmoi init --apply https://github.com/robintully/dotfiles.git
```

## Managing Dotfiles

### Update dotfiles from the repository

```bash
chezmoi update -v
```

### Edit a dotfile

```bash
chezmoi edit ~/.config/hypr/hyprland.conf
```

### Add a new dotfile to chezmoi

```bash
chezmoi add ~/.config/newfile
```

### Apply changes after editing

```bash
chezmoi apply -v
```

## What's Included

- Hyprland configuration (window manager)
- Hypridle configuration (idle daemon)
- Hyprlock configuration (screen locker)
- Various Hyprland-related configurations

## Notes

- Use `chezmoi diff` before applying to see what will change
- The `-v` flag provides verbose output to see what's happening
