return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", enabled = true },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = true },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
