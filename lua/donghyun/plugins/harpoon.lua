local setup, harpoon = pcall(require, "harpoon")
if not setup then
	return
end

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

harpoon.setup({})

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-n>", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<C-m>", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<C-,>", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<C-.>", function()
	ui.nav_file(4)
end)
