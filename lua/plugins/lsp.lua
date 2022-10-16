local coq = require "coq"

require'lspconfig'.pyright.setup{}


local lsp_flags = {
  -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

local lsp_on_attach = function(client, bufnr)
    end

-- require('lspconfig').clangd.setup{on_attach = lsp_on_attach}

-- to generate compile_commands.json file use 
-- cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
