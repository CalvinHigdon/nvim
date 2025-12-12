package.path = package.path .. ";/home/calvinhigdon/.config/nvim/lua/calvin/core/?.lua"
local themes = require("colorscheme")

require("themery").setup({
    themes = themes -- Your list of installed colorschemes.
})
