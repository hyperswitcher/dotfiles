-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- https://dev.to/vonheikemen/neovim-creating-keymaps-in-lua-3n11


-- LSP
-- <C+]> (goto)
-- K (hover)
-- gq (format)
-- <C-X><C-o> (completion)
-- ]d [d <C-W>d (diagnostics)


-- Zen-Mode
vim.keymap.set("n", "<leader>zm", require("zen-mode").toggle)
-- ZK
-- Create a new note
vim.keymap.set("n", "<leader>zn", function()
    require("zk.commands").get("ZkNew")({ dir = vim.fn.expand("%:p:h"), title = vim.fn.input("Title: ")})
end)
vim.keymap.set("v", "<leader>znt", function()
    require("zk.commands").get("ZkNewFromTitleSelection")({ dir = vim.fn.expand("%:p:h") })
end)
vim.keymap.set("v", "<leader>znc", function()
    require("zk.commands").get("ZkNewFromContentSelection")({ dir = vim.fn.expand("%:p:h"), title = vim.fn.input("Title: ") })
end)

-- Open notes
vim.keymap.set("n", "<leader>zf", function()
    require("zk.commands").get("ZkNotes")({ sort= { 'modified' }})
end)
vim.keymap.set("v", "<leader>zf", function()
    require("zk.commands").get("ZkMatch")({ sort= { 'modified' }})
end)

-- Tags
-- Open notes associated with the selected tags
vim.keymap.set("n", "<leader>zt", function()
    require("zk.commands").get("ZkTags")({})
end)

-- Links
-- Open notes linking to the current buffer
vim.keymap.set("n", "<leader>zb", function()
    require("zk.commands").get("ZkBacklinks")({})
end)

-- Open notes linked by the current buffer
vim.keymap.set("n", "<leader>zl", function()
    require("zk.commands").get("ZkLinks")({})
end)

-- Insert Link
vim.keymap.set("n", "<leader>zi", function()
    require("zk.commands").get("ZkInsertLink")({})
end)
vim.keymap.set("v", "<leader>zi", function()
    require("zk.commands").get("ZkInsertLinkAtSelection")({ dir = vim.fn.expand("%:p:h") })
end)
