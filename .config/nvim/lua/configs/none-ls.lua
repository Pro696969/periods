local null_ls = require "null-ls"

-- aliases
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
  -- Python
  formatting.black,
  diagnostics.ruff,

  -- Git
  code_actions.gitsigns,
}

null_ls.setup { sources = sources, debug = false }

---------------------------------------------------------------
-- -- code action sources
-- local code_actions = null_ls.builtins.code_actions
--
-- -- diagnostic sources
-- local diagnostics = null_ls.builtins.diagnostics
--
-- -- formatting sources
-- local formatting = null_ls.builtins.formatting
--
-- -- hover sources
-- local hover = null_ls.builtins.hover
--
-- -- completion sources
-- local completion = null_ls.builtins.completion
--
--
-- register any number of sources simultaneously

-- OLD
-- local sources = {
--     -- null_ls.builtins.diagnostics.mypy,
--     -- null_ls.builtins.diagnostics.pylint,
--     -- null_ls.builtins.formatting.black, -- space f m -- handled by conform FASTER
--     null_ls.builtins.diagnostics.ruff,
--     null_ls.builtins.code_actions.gitsigns,
-- }

-- local opts = {
--   sources = {
--       }
-- }
-- return opts
