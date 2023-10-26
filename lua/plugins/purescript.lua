return {
  { "purescript-contrib/purescript-vim" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "haskell", "dhall" })
      -- vim.treesitter.language.register("haskell", "purescript")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        purescriptls = {},
        dhall_lsp_server = {},
      },
    },
  },
}
