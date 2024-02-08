-- mapleader needs to load before lazy so commenting it out here
-- vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Attempt to keep cursor in the middle line as we page-up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Attempt to keep cursor in the middle line as we go through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over selected text while keeping old buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank into system clipboard - credit: asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Send the deleted to the Shadow Realm instead of the paste buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Format document using lsp rules
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

-- Replace all instances of selected word
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Set current file as executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

