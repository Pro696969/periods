require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<Leader>w", "<cmd>write<cr>", { desc = "cool way to save a file" })
map("n", "<Leader>q", "<cmd>quit<cr>", { desc = "cool way to exit a file" })

-- code actions
-- <leader>gra by default

map("n", "<leader>gri", function()
  vim.lsp.buf.code_action {
    context = {
      diagnostics = {},
      only = { "source.organizeImports" },
    },
    apply = true,
  }
end, { desc = "Organize Imports" })

map("n", "<leader>grf", function()
  vim.lsp.buf.code_action {
    context = {
      diagnostics = {},
      only = { "source.fixAll" },
    },
    apply = true,
  }
end, { desc = "Remove Unused Imports" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
