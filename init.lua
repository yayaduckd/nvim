vim.g.mapleader = " "

-- OPTIONS
vim.opt.number = true

-- set indentation to be always done with spaces
vim.opt.expandtab = true

-- set the number of spaces <Tab> and <Backspace> inserts/deletes
vim.opt.softtabstop = 4

-- set the number of spaces that are inserted when (auto)indent (example: <) is used
vim.opt.shiftwidth = 4

-- define the width of a <Tab> character
-- makes sure that files containing tabs look the sames as ones using 4 spaces
vim.opt.tabstop = 4

-- (existing files can be converted to these settings with :retab)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup("plugins")

-- Shift + K for signature popup
