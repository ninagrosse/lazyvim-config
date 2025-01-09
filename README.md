# 💤 My LazyVim config

This configuration is best used in conjunction with my [dotfiles](https://github.com/ninagrosse/dotfiles) or [dotfiles-win](https://github.com/ninagrosse/dotfiles-win) to have all the requirements already installed and configured.

## Installation

- (optional) Check and install the requirements at [lazyvim.org](https://www.lazyvim.org/#%EF%B8%8F-requirements) if not using dotfiles
- (optional) Backup current Neovim files
- Clone the repository

<details><summary> Linux and Mac </summary>

```sh
git clone git@github.com:ninagrosse/lazyvim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows (PowerShell) </summary>

```powershell
git clone git@github.com:ninagrosse/lazyvim-config.git "${env:LOCALAPPDATA}\nvim"
```

</details>

## Post Installation

Start Neovim and wait until all plugins are installed.

```sh
nvim
```

Run `:LazyHealth` to load all plugins and check if everything is working correctly.
