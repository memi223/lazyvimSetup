-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--go back to lazyvim dashboard
vim.keymap.set("n", "<leader><", ":lua Snacks.dashboard.open()", { desc = "lazyVim dashboard" })

--compile C code in terminal
vim.keymap.set("t", "<leader>cg", "gcc -O0 -Wall -W -pedantic -std=c99 -o %:r.exe %<CR>")

vim.keymap.set("n", "<leader>p", ":cd %:p:h", { desc = "cd current path" })

-- Prefill :%s/ with the word under the cursor, ready to type the replacement
vim.keymap.set("n", "<leader>r", [[:%s/\V<C-r><C-w>//g<Left><Left>]], { desc = "Replace word under cursor" })

--compile and run C code
vim.keymap.set("n", "<leader>cr", function()
  vim.cmd("write")
  vim.cmd("botright split")
  vim.cmd("resize 15")
  vim.cmd("terminal gcc -O0 -g -Wall -W -pedantic -std=c99 -o %:r.exe %:p && %:r.exe")
end, { noremap = true, silent = true, desc = "compile and run C" })

vim.keymap.set("n", "<leader>gc", ":!git clone ", {
  desc = "Git clone repository",
})
