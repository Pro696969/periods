-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local nvlsp = require "nvchad.configs.lspconfig"
local servers = { "html", "cssls", "pyright", "mypy", "ruff", "black" }

-- lsps with default config
for _, server in ipairs(servers) do
  vim.lsp.enable(server, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end


-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
