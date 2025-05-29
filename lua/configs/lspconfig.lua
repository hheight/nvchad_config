-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "cssls", "ts_ls", "clangd", "yamlls", "jsonls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
--
lspconfig.html.setup {
  filetypes = { "html", "eruby" },
}

lspconfig.tailwindcss.setup {
  filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "eruby" },
  init_options = {
    userLanguages = {
      eruby = "html",
    },
  },
}

lspconfig.ruby_lsp.setup {
  init_options = {
    formatter = "standard",
    linters = { "standard" },
  },
}
