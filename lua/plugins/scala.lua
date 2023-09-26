return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "scala" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { metals = {} } },
  },
  {
    "nvim-neotest/neotest",
    dependencies = { "stevanmilic/neotest-scala" },
    opts = { adapters = { ["neotest-scala"] = { framework = "munit" } } },
  },
}
