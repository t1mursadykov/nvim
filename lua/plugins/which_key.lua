local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1


wk.register({
  f = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File"}, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false}, -- additional options for creating the keymap
    n = { "New File" }, -- just a label. don't create any mapping
    -- e = "Edit File", -- same as above
    -- ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    -- b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
}, { prefix = " " })

wk.register({
    s = {
      name = "search", -- optional group name
      f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
      g = {"<cmd>Telescope live_grep<cr>", "Live Grep"}
    },
  }, { prefix = " " })

wk.register({
    j = {
      name = "jump",
      d = { vim.lsp.buf.declaration , "Jump to defenition" }, 
      D = {vim.lsp.buf.definition, "Jump to declaration"},
      i = {vim.lsp.buf.implementation, "Jump to implementation"},
      r = {"<cmd>Telescope lsp_references<cr>", "References"},
    },
  }, { prefix = " " })

wk.register({
    u = {
      '<cmd>undo<cr>',
      "undo",
    },
    r = {
        '<cmd>redo<cr>',
        "redo",
    }
  }, { prefix = " " })

