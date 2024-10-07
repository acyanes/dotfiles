local opt = vim.opt

-- line numbers
-- opt.relativenumber = true
opt.number = true
opt.fillchars:append { eob = ' ' } -- removes the empty line tildas

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- this lets me dw on words with a dash ex. hello-hello
opt.iskeyword:append("-")