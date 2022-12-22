local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

local setupapi, api = require("nvim-tree.api")
if not setupapi then
    return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
    view = {
        relativenumber=true,
        number=true,
    }
})
