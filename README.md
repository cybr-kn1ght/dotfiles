# GNU Stow  

These dotfiles are managed using symlinks through GNU Stow. This allows the dotfiles repo to be stored anywhere on your system and only include a curated list of managed dotfiles (rather than every file in `~/.config`).

The directory structure for this repo is based on the GNU Stow convention of:

`<package-name>/<path-relative-to-home>`

For example, the structure for neovim:

```
  nvim/.config/nvim
 name | path
```

Running `stow nvim` will then link all the config files in `.config/nvim`.

# Installation

1. Clone this repository anywhere in your computer.

2. `cd` into the repo directory.

3. Excecute the command `stow <directory>` for any config that you wish to link. Include arg `--adopt` if there is an existing config (it will be overwritten).

# See also

- https://github.com/bashbunni/dotfiles
- https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
- https://www.youtube.com/watch?v=NoFiYOqnC4o
