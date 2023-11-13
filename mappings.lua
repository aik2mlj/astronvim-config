-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `alt-h` and `alt-l`
    ["<M-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<M-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- ["<"] = {"<<"},
    -- [">"] = {">>"},
    U = { "<C-r>" },
    H = { "g^" },
    L = { "g$" },
    J = { "5gj" },
    K = { "5gk" },
    ["<M-j>"] = { ":m .+1<CR>==" },
    ["<M-k>"] = { ":m .-2<CR>==" },
    ["<M-J>"] = { ":t .<CR>" },
    ["<M-K>"] = { ":t .-1<CR>" },
    ["<leader>k"] = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  x = {
    J = { "5gj" },
    K = { "5gk" },
    ["<M-j>"] = { ":m'>+<CR>==gv" },
    ["<M-k>"] = { ":m-2<CR>==gv" },
    ["<M-J>"] = { ":t'><CR>gv" },
    ["<M-K>"] = { ":t-1<CR>gv" },
  },
}
