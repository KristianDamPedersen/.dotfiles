-- NOTE: This is where we add the servers after installing them with Mason
return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type Lspconfig.options
    servers = {
      pyright = {},
    },
  },
}
