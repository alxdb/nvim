return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.filetype.add({ extension = { wgsl = "wgsl" } })
      vim.list_extend(opts.ensure_installed, { "wgsl" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        wgsl_analyzer = {},
      },
    },
  },
}
