source ~/.config/nvim/base/keys.vim
source ~/.config/nvim/base/settings.vim

call plug#begin()
    " Plug 'catppuccin/nvim', { 'as': 'catppuccin' } 		    " Theme
    Plug 'scottmckendry/cyberdream.nvim',
    Plug 'dasupradyumna/midnight.nvim'
    Plug 'scottmckendry/cyberdream.nvim'
    Plug 'nvim-lua/plenary.nvim'                        " Utility for other plugins
    Plug 'nvim-tree/nvim-web-devicons'                  " Utility icons

    " Basic Editor Utilities
    Plug 'szw/vim-maximizer' 				                    " Split Utility
    Plug 'numToStr/Comment.nvim' 				                " Comments
    Plug 'nvim-tree/nvim-tree.lua'                      " Dir tree
    Plug 'nvim-lualine/lualine.nvim'                    " status line
    Plug 'windwp/nvim-autopairs'                        " pairing
    Plug 'Pocco81/true-zen.nvim'                        " zen mode

    " Autocomplete
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'

    " Snippets
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'rafamadriz/friendly-snippets'

    " Fuzzy Search
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' } " fuzzy search
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

    " LSP
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Linting
    Plug 'jose-elias-alvarez/null-ls.nvim'

    " Markdown
    Plug 'jakewvincent/mkdnflow.nvim'
    Plug 'reedes/vim-litecorrect'

call plug#end()

" Plugin Config
" -------------
source ~/.config/nvim/plugin-config/comment.config.lua
source ~/.config/nvim/plugin-config/nvim-tree.config.lua
source ~/.config/nvim/plugin-config/lualine.config.lua
source ~/.config/nvim/plugin-config/telescope.config.lua
source ~/.config/nvim/plugin-config/autopair.config.lua
source ~/.config/nvim/plugin-config/nvim-cmp.config.lua
source ~/.config/nvim/plugin-config/true-zen.config.lua
source ~/.config/nvim/plugin-config/tailwind-sorter.config.lua
source ~/.config/nvim/plugin-config/markdown.config.lua
source ~/.config/nvim/plugin-config/litecorrect.config.vim
source ~/.config/nvim/plugin-config/highstr.config.lua
source ~/.config/nvim/plugin-config/treesitter.config.lua

" Colorscheme config
source ~/.config/nvim/plugin-config/cyberdream.config.lua

" LSP Config
" -------------
source ~/.config/nvim/plugin-config/lsp/lsp.config.lua

" Plugin keybinds
source ~/.config/nvim/plugin-config/plugin-keybinds.vim

" Colorscheme
syntax on
set t_Co=256
set termguicolors
colorscheme cyberdream 
" colorscheme midnight
" colorscheme catppuccin-frappe
