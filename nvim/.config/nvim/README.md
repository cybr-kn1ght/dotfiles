# kickstart.nvim

My configuration for nvim began from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). All credit for it goes to the maintainers of the repo. I forked it in [this repo](https://github.com/cybr-kn1ght/kickstart.nvim), which is now archived, as my Neovim config will continue to develop here.


## Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation),
  [fd-find](https://github.com/sharkdp/fd#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Emoji fonts (Ubuntu only, and only if you want emoji!) `sudo apt install fonts-noto-color-emoji`
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.
