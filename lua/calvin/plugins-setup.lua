-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- lua functions a lot of plugins use
    {"nvim-lua/plenary.nvim"},

    --1--AESTHETICS----
    --
    -- colorscheme
    {"folke/tokyonight.nvim"},
    {"folke/lazy.nvim"},
    {"Mofiqul/dracula.nvim"},

    -- statusline
    {"nvim-lualine/lualine.nvim"},


    --2--FOR CONVENIENCE----
    --
    -- essential plugins
    {"tpope/vim-surround"},
    {"vim-scripts/ReplaceWithRegister"},

    -- commenting with gc
    {"numToStr/Comment.nvim"},

    -- which-key
    {
    "folke/which-key.nvim",
        dependencies = {"echasnovski/mini.icons"}
    },

    -- undotree
    {'mbbill/undotree'},


    --3--WINDOW/TAB NAVIGATION----
    --
    -- tmux & split window navigation
    {"christoomey/vim-tmux-navigator"},
    {"szw/vim-maximizer"},

    -- file navigation
    {"nvim-tree/nvim-web-devicons"},
    {"nvim-tree/nvim-tree.lua"},

    -- harpoon
    {'theprimeagen/harpoon'},
    
    -- fuzzy finding
    -- {{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }},
    
    -- init.lua:
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim',  'iruzo/ripgrep.nvim', 'sharkdp/fd'}
    },

    -- treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        run = 'TSUpdate'
    },


    -- linter
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'mason-org/mason-lspconfig.nvim'},
            {'mason-org/mason.nvim'},
            {'neovim/nvim-lspconfig'},
            

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    {
        'chipsenkbeil/distant.nvim', 
        branch = 'v0.3',
        config = function()
            require('distant'):setup()
        end
    },

    -- web dev
    {'ray-x/web-tools.nvim'}, -- command: BrowserSync
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
