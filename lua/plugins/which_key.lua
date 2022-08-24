local wk = require("which-key")


wk.register({
  f = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File"}, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false}, -- additional options for creating the keymap
    -- n = { "New File" }, -- just a label. don't create any mapping
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

wk.register({
    z = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
      },
}, { prefix = " " })

wk.register({
    l = {
        name = "LSP",
        s = { "<cmd>LspStart<cr>", "Start" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        r = { "<cmd>LspRestart<cr>", "Restart" },
        S = { "<cmd>LspStop<cr>", "Stop" },
        l = { "<cmd>LspLog<cr>", "Log" },
      },
}, { prefix = " " })
