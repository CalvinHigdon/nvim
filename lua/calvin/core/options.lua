local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.hlsearch = false
opt.incsearch = true

-- cursor settings
opt.cursorline = true

-- appearance
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- swap files and things
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.updatetime = 50
opt.timeoutlen=300
