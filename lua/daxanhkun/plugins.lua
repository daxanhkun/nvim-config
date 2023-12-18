-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}} -- Lazy loading
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround' -- Surrounding ysw
  use 'tpope/vim-commentary' -- For Commenting gcc & gc
  use 'github/copilot.vim'

  use 'f-person/git-blame.nvim'

  use 'tc50cal/vim-terminal' -- Vim Terminal

  use 'folke/tokyonight.nvim'
  use 'vim-airline/vim-airline' -- Status bar
  use 'ryanoasis/vim-devicons' -- Developer Icons

  use 'preservim/nerdtree'
  use 'ap/vim-css-color' -- CSS Color Preview
  use 'preservim/tagbar' -- Tagbar for code navigation
  use 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
  use 'bronson/vim-trailing-whitespace'
  use 'christoomey/vim-tmux-navigator'
  use 'vimpostor/vim-tpipeline'
  use { 'junegunn/fzf', run = ":call fzf#install()" }
  use 'junegunn/fzf.vim'
  use '907th/vim-auto-save'
  use 'alvan/vim-closetag' -- Fot HTML close tag
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use 'neovim/nvim-lspconfig'

  -- Auto completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- End auto completion
  use 'thoughtbot/vim-rspec'
  use 'tpope/vim-rails'

end)
