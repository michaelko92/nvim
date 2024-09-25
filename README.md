```
    ✯                              .°•    |    
    __     °    •                __      / \   
   / /   ____ ___  ______  _____/ /_    | O |  
  / /   / __ `/ / / / __ \/ ___/ __ \   | O |  
 / /___/ /_/ / /_/ / / / / /__/ / / /  /| | |\ 
/_____/\__,_/\__,_/_/ /_/\___/_/ /_/  /_(.|.)_\
```

This config will provide a modular starting point for anyone looking to use Neovim as their IDE. It is meant to be simple and easy to understand and extend. Use it as a base for your own config or just take individual pieces.

All the included plugins are pinned to a version that ensures they are compatible and will not update potentially introducing errors into your config. For every Neovim release I will update this repo along with the community to keep it up to date with the newest versions.

As I mentioned, this config is meant as a starting point for people new to Neovim who want a familiar IDE experience. The config has a very simple structure that makes it easy to add new plugins.

## Install Neovim 0.9

You can install Neovim with your package manager e.g. brew, apt, pacman etc.. bus remember that when you update your packages Neovim may be upgraded to a newer version.

If you would like to make sure Neovim only updates when you want it to than I recommend installing from source: [instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source)

## Install the config

Make sure to remove or backup your current `nvim` directory

```sh
git clone https://github.com/LunarVim/Launch.nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

**NOTE** Some are already setup as examples, remove them if you want

<<<<<<< HEAD
### Plugins

### You can install new plugins here: [plugins](https://github.com/LunarVim/nvim-basic-ide/tree/master/lua/user)

Heres the wiki for installing new plugins refer to this: [wiki](https://github.com/LunarVim/nvim-basic-ide/wiki/adding_new_plugins)

## Plugins

- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [DAPInstall.nvim](https://github.com/ravenxrz/DAPInstall.nvim)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [which-key.nvim](https://github.com/folke/which-key.nvim)

=======
>>>>>>> a1c73e4 (update readme)
---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.

\- Edsger W. Dijkstra
