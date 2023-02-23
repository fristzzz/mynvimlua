vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'

vim.o.scrolloff = 6
vim.o.sidescrolloff = 8

vim.wo.number = true
--vim.wo.relativenumber = true

-- vim.wo.cursorline = true

vim.wo.signcolumn = "yes"

--vim.wo.colorcolumn = "70"

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

--空格代替tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- vim.o.autoindent = true
-- vim.bo.autoindent = true
-- vim.o.smartindent = true

vim.o.ignorecase = true
-- vim.o.smartcase = true

vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.cmdheight = 2

--auto read when file is modified
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
-- vim.wo.wrap = false

vim.o.hidden = true

vim.o.mouse = "a"

--no backup
vim.o.backup = false 
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller update time
vim.o.updatetime = 300

vim.o.timeoutlen = 400

vim.o.splitbelow = true
vim.o.splitright = true

-- donot auto select auto completion
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- style
vim.o.background = "dark"
vim.o.termguicolors = false
vim.opt.termguicolors = false

-- invisible chars 
-- vim.o.list = true
-- vim.o.listchars = "space:^"

vim.o.wildmenu = true

-- Don't pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'

vim.o.pumheight = 10

-- vim.o.showtabline = 2

-- 使用增强状态栏插件后不再需要vim的模式提示
vim.o.showmode = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

