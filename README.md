# Dotfiles

Personal dotfiles for an [Omarchy](https://omarchy.org/) system, managed with [chezmoi](https://www.chezmoi.io/).

## What's Included

### Configurations
- **Hyprland** — window manager, keybindings, window rules, workspace assignments, monitors, idle/lock screen
- **Waybar** — status bar layout and styling
- **Yazi** — file manager with `y` shell wrapper (changes cwd on exit)
- **UWSM** — environment variables including VSCode as default editor

### Automation
- **Package installation** — installs all packages via `yay` on apply (see [Packages](#packages))
- **Ghostty + VSCode setup** — sets Ghostty as default terminal, installs VSCode (`run_once`)
- **omarchy-yazi** — installs yazi theme integration for Omarchy (`run_once`)
- **NAS mounts** — sets up autofs for SMB shares over Tailscale, credentials pulled from Bitwarden (`run_onchange`)

### Packages

Automatically installed via `yay` on `chezmoi apply`:

| Package | Purpose |
|---------|---------|
| `chezmoi` | Dotfiles manager |
| `vivaldi` | Browser |
| `celluloid-git` | Video player |
| `slack-desktop-wayland` | Work messaging |
| `vesktop-bin` | Discord client |
| `bitwarden` + `rbw` | Password manager |
| `claude-code` | AI coding assistant |
| `twist` | Team messaging |
| `grayjay-bin` | Video aggregator |
| `gearlever` | AppImage manager |
| `backrest` | Backup UI (restic/BorgBase) |
| `bruno-bin` | API client |
| `superproductivity-bin` | Task manager |
| `jellyfin-desktop` | Media player |
| `yazi` | Terminal file manager |
| `autofs` + `cifs-utils` | NAS automounting |
| `nano` + `direnv` | Shell utilities |

## Prerequisites

Before running `chezmoi apply` on a fresh machine:

1. **Omarchy must be installed** — these dotfiles are built for Omarchy

2. **Configure `rbw`** (Bitwarden CLI) — required for NAS setup:
   ```bash
   rbw config set email your@email.com
   rbw login
   rbw unlock
   ```

3. **Bitwarden item `smb_mounts`** must exist with these custom fields:
   - `hostname` — Tailscale MagicDNS hostname of the NAS
   - `shares` — comma-separated share names

## Installation

### Quick Start

```bash
chezmoi init --apply https://github.com/robintully/dotfiles.git
```

### Step-by-step

```bash
# 1. Initialize
chezmoi init https://github.com/robintully/dotfiles.git

# 2. Preview changes (prints status, doesn't open a diff tool)
chezmoi status

# 3. Apply
chezmoi apply -v
```

## Managing Dotfiles

```bash
# Sync system files back into chezmoi after editing them directly
chezmoi re-add ~/.config/hypr/bindings.conf

# Pull and apply upstream changes
chezmoi update -v

# Edit a file via chezmoi
chezmoi edit ~/.config/hypr/hyprland.conf
```

## Development Setup

### Python

```bash
mise use uv && mise settings experimental=true
```

Uses [mise](https://mise.jdx.dev/) for runtime management and [uv](https://github.com/astral-sh/uv) for Python package management.

### Environment Variables

[direnv](https://direnv.net/) is installed for per-directory environment variables. Add a `.envrc` to any project directory and run `direnv allow`.

### Tools

- **Bruno** — API client for testing REST/GraphQL APIs
- **Claude Code** — AI coding assistant (MCP CLI mode enabled by default)

## Backups with Backrest

[Backrest](https://github.com/garethgeorge/backrest) is a web UI for [restic](https://restic.net/) backups. It's installed automatically and runs as a systemd user service, backing up to [BorgBase](https://www.borgbase.com/).

```bash
systemctl --user status backrest
```

> **Note:** Backrest configuration (repos, backup plans, credentials) is managed through the web UI and is not tracked in chezmoi — set it up manually after a fresh install.
