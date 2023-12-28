return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "lmburns/lf.nvim",
    lazy = false,
    config = function()
      -- This feature will not work if the plugin is lazy-loaded
      vim.g.lf_netrw = 1

      require("lf").setup {
        escape_quit = true,
        border = "rounded",
      }

      vim.keymap.set("n", "<leader>o", "<Cmd>Lf<CR>")

      -- vim.api.nvim_create_autocmd({
      --   event = "User",
      --   pattern = "LfTermEnter",
      --   callback = function(a) vim.api.nvim_buf_set_keymap(a.buf, "t", "q", "q", { nowait = true }) end,
      -- })
    end,
    requires = { "toggleterm.nvim" },
  },
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
