-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.termguicolors = true

vim.o.autochdir = true
vim.o.backspace = 'indent,eol,start'
vim.o.backup = false
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noinsert,noselect,popup'
vim.o.fileencoding = 'utf-8'
vim.o.langmap =
'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
vim.o.laststatus = 0
vim.o.modifiable = true
vim.o.mouse = 'a'
vim.o.relativenumber = true
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.conceallevel = 1

vim.wo.cursorline = false
vim.wo.relativenumber = false
vim.wo.signcolumn = 'yes'
vim.wo.wrap = false

vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_list_hide = '\\(^\\|\\s\\s\\)\\zs\\.\\S\\+'
vim.g.netrw_liststyle = 2
vim.g.netrw_localcopydircmd = 'cp -r'
vim.g.netrw_preview = 1

vim.g.vim_markdown_folding_level = 5
