vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>s=", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
-- CTRL-h goes left window, CTRL-l goes right window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- visual mode moving lines down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- visual mode moving lines up
keymap.set("v", "J", "mJ`z") -- join without moving cursor
keymap.set("n", "<C-d>", "<C-d>zz") -- jumping a half-page down keeps cursor in middle
keymap.set("n", "<C-u>", "<C-u>zz") -- jumping a half-page up keeps cursor in middle
keymap.set("n", "n", "nzzzv") -- looking through search results keeps cursor in middle
keymap.set("n", "N", "Nzzzv") -- looking through search results keeps cursor in middle

keymap.set("x", "<leader>p", "\"_dP") -- replace without messing up register

-- Yank to System Clipboard
keymap.set("n", "<leader>y", "\"+y") -- <leader>y yanks to system clipboard
keymap.set("v", "<leader>y", "\"+y") -- <leader>y yanks to system clipboard
keymap.set("n", "<leader>Y", "\"+Y") -- <leader>Y yanks to system clipboard

keymap.set("n", "<leader>p", "\"+p") -- <leader>p pastes to system clipboard
keymap.set("v", "<leader>p", "\"+p") -- <leader>p pastes to system clipboard
keymap.set("n", "<leader>P", "\"+P") -- <leader>P pastes to system clipboard

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")  -- quickfix list
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- quickfix list
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- quickfix list
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- quickfix list

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<C-e>", ui.toggle_quick_menu)


keymap.set("n", "<C-y>", function() ui.nav_file(1) end)
keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
keymap.set("n", "<C-n>", function() ui.nav_next() end)

-- undotree
keymap.set("n", "<leader>u", "vim.cmd.UndotreeToggle")

-- git integration
vim.api.nvim_create_user_command(
"WQQ",
function()
    vim.cmd ("w")
    vim.cmd ("! git add -A")
    vim.cmd ("! git commit -m Changes")
    vim.cmd ("! git push")
    vim.fn.input("Press ENTER to continue...")
    vim.cmd ("q")
end, {}
)
