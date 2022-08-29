local wk = require("which-key")


wk.register({
    f = {
        name = "file", -- optional group name
        f = { 
            "<cmd>Telescope find_files<cr>", 
            "Find File"
        }, -- create a binding with label
        r = {
            "<cmd>Telescope oldfiles<cr>", 
            "Open Recent File", noremap=false
        }, -- additional options for creating the keymap
    },
    s = {
        name = "search", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
        g = {"<cmd>Telescope live_grep<cr>", "Live Grep"}
    },
    j = {
      name = "jump",
      d = { vim.lsp.buf.declaration , "Jump to defenition" }, 
      D = {vim.lsp.buf.definition, "Jump to declaration"},
      i = {vim.lsp.buf.implementation, "Jump to implementation"},
      r = {"<cmd>Telescope lsp_references<cr>", "References"},
    },
    u = {
      '<cmd>undo<cr>',
      "undo",
    },
    r = {
        '<cmd>redo<cr>',
        "redo",
    },
    b = {
        name = "buffer",
        P = {"<cmd>BufferPin<cr>", "pin"},
        q = {"<cmd>BufferClose<cr>", "close"},
        n = {"<cmd>BufferNext<cr>", "next"},
        p = {"<cmd>BufferPrevious<cr>", "previous"},
        m = {"<cmd>BufferMoveNext<cr>", "move next"},
        M = {"<cmd>BufferMovePrevious<cr>", "move previous"},
        
    },
    Q = {
        name = "Coq",
        d = {"<cmd>COQdeps<cr>", "deps"},
        s = {"<cmd>COQnow<cr>", "start"},
        n = {"<cmd>COQsnips<cr>", "snips"},
    },
    P = {
        name = "Packer",
        c = { "<cmd>PackerCompile<cr>", "Compile" },
        i = { "<cmd>PackerInstall<cr>", "Install" },
        s = { "<cmd>PackerSync<cr>", "Sync" },
        S = { "<cmd>PackerStatus<cr>", "Status" },
        u = { "<cmd>PackerUpdate<cr>", "Update" },
    },
    L = {
        name = "LSP",
        s = { "<cmd>LspStart<cr>", "Start" },
        i = { "<cmd>LspInfo<cr>", "Info" },
        r = { "<cmd>LspRestart<cr>", "Restart" },
        S = { "<cmd>LspStop<cr>", "Stop" },
        l = { "<cmd>LspLog<cr>", "Log" },
    },
}, { prefix = " " })

wk.register({
    c = {
        '<cmd>yank<cr>',
        "copy",
    }
}, {prefix = " ", mode = "v"})

wk.register({
    C = {
        '<cmd>CommentToggle<cr>',
        "comment/uncomment",
    },
}, {prefix = " ", mode = "v"})


