require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "cpp", "css", "go", "python", "lua", "cmake", "yaml", "json"},
  
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
  
    -- List of parsers to ignore installing (for "all")
    ignore_install = { "javascript" },
  
    highlight = {
      -- `false` will disable the whole extension
      enable = true,
      -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
      -- disable highlighting for the `tex` filetype, you need to include `` in this list as this is
      -- the name of the parser)
      -- list of language that will be disabled
      disable = {"latex"},
  
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },

    -- HTML auto taging
    autotag = {
        enable = true,
    },

    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    autopairs = {
        enable = true
    }
}


-- Пример настройки своего типа хайлайта
-- api.nvim_set_hl(0, "HlTimurFunction", {italic = false, default = false, link = "Function"})

-- require("nvim-treesitter.highlight").set_custom_captures {
--     -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
--     ["function"] = "HlTimurFunction",
-- }


-- autopairs
require('nvim-autopairs').setup{
    check_ts = true,
}