return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("snacks.util.lsp").on(function(_, ctx)
          local buffer = ctx.buf
          -- stylua: ignore
          vim.keymap.set("n", "<leader>co", "<cmd>TypescriptOrganizeImports<cr>", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "<cmd>TypescriptRenameFile<cr>", { buffer = buffer, desc = "Rename File" })
        end)
      end,
    },
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        tsserver = {},
        pyright = {},
        clangd = {
          cmd = { "clangd", "--offset-encoding=utf-16" },
        },
      },

      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
  },
}
