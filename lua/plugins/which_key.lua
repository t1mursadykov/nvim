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
        name = "search",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        g = {"<cmd>Telescope live_grep<cr>", "Live Grep"}
    },
    j = {
      name = "jump",
      d = { vim.lsp.buf.declaration , "Jump to defenition" }, 
      D = {vim.lsp.buf.definition, "Jump to declaration"},
      i = {vim.lsp.buf.implementation, "Jump to implementation"},
      r = {"<cmd>Telescope lsp_references<cr>", "References"},
      s = {"<cmd>Telescope lsp_document_symbols<cr>", "Symbols"}
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
        P = {"<cmd>BufferLineTogglePin<cr>", "pin"},
        n = {"<cmd>BufferLineCycleNext<cr>", "next"},
        p = {"<cmd>BufferLineCyclePrev<cr>", "previous"},
        m = {"<cmd>BufferLineMoveNext<cr>", "move next"},
        M = {"<cmd>BufferLineMovePrev<cr>", "move previous"},
        
    },
    C = {
        "<cmd>CommentToggle<cr>",
        "Comment",
    },
    W = {
        name = "win shift",
        l = {"<cmd>WinShift left<cr>", "left"},
        r = {"<cmd>WinShift right<cr>", "right"},
        u = {"<cmd>WinShift up<cr>", "up"},
        d = {"<cmd>WinShift down<cr>", "down"},

        L = {"<cmd>WinShift far_left<cr>", "far left"},
        R = {"<cmd>WinShift far_right<cr>", "far right"},
        U = {"<cmd>WinShift far_up<cr>", "far up"},
        D = {"<cmd>WinShift far_down<cr>", "far down"},
 
        s = {"<cmd>WinShift swap<cr>", "swap"},
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


