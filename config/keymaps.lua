-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>p", ":cd %:p:h", { desc = "cd current path" })

-- Prefill :%s/ with the word under the cursor, ready to type the replacement
vim.keymap.set("n", "<leader>r", [[:%s/\V<C-r><C-w>//g<Left><Left>]], { desc = "Replace word under cursor" })

-- Replace within the visual selection
vim.keymap.set("v", "<leader>r", [["hy:%s/<C-r>h//gc<Left><Left><Left>]], { desc = "Replace in selection" })

vim.keymap.set("n", "<leader>gc", ":!git clone ", {
    desc = "Git clone repository",
})
