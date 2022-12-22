local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    -- lua functions a lot of plugins use
    use("nvim-lua/plenary.nvim")

    --1--AESTHETICS----
    --
    -- colorscheme
    use("folke/tokyonight.nvim")
    use("Mofiqul/dracula.nvim")

    -- statusline
    use("nvim-lualine/lualine.nvim")


    --2--FOR CONVENIENCE----
    --
    -- essential plugins
    use("tpope/vim-surround")
    use("vim-scripts/ReplaceWithRegister")

    -- commenting with gc
    use("numToStr/Comment.nvim")

    -- which-key
    use("folke/which-key.nvim")

    -- undotree
    use('mbbill/undotree')


    --3--WINDOW/TAB NAVIGATION----
    --
    -- tmux & split window navigation
    use("christoomey/vim-tmux-navigator")
    use("szw/vim-maximizer")

    -- file navigation
    use("nvim-tree/nvim-web-devicons")
    use("nvim-tree/nvim-tree.lua")

    -- harpoon
    use('theprimeagen/harpoon')
    
    -- fuzzy finding
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build" }) -- helps telescope do good
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = 'TSUpdate'
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

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
    }




    if packer_bootstrap then
        require("packer").sync()
    end
end)
