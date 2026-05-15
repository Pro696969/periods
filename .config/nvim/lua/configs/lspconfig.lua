-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"
local servers = { "html", "cssls", "pyright", "ruff", "clangd", "jdtls" }

-- lsps with default config
for _, server in ipairs(servers) do
  vim.lsp.enable(server, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
      },
    },
  },
})

vim.lsp.config("clangd", {
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "hpp" },
})

vim.lsp.config("jdtls", {
  filetypes = { "java", "groovy" },
})

vim.lsp.config("jdtls", {
  filetypes = { "java", "groovy" },
  cmd = {
    "/usr/lib/jvm/java-21-openjdk/bin/java", -- JDTLS runs on Java 21
    "-jar",
    "/home/pro696969/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",
  },
  settings = {
    java = {
      configuration = {
        runtimes = {
          {
            name = "JavaSE-11",
            path = "/usr/lib/jvm/java-11-openjdk/",
            default = true, -- your projects use Java 11
          },
          {
            name = "JavaSE-21",
            path = "/usr/lib/jvm/java-21-openjdk/",
          },
        },
      },
    },
  },
})

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
