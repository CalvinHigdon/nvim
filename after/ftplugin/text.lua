local keymap = vim.keymap

keymap.set("n", "j", "gj", {noremap = true})
keymap.set("n", "k", "gk", {noremap = true})

vim.opt.linebreak = true
vim.opt.wrap = true

vim.opt.spell = true
