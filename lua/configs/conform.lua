local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    css = { "prettierd" },
    scss = { "prettierd" },
    markdown = { "prettierd" },
    html = { "prettierd", "htmlbeautifier" },
    ruby = { "rubocop", lsp_format = "fallback" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup {
  formatters = {
    rubocop = {
      args = { "--server", "--auto-correct-all", "--stderr", "--force-exclusion", "--stdin", "$FILENAME" },
    },
  },
}

return options
