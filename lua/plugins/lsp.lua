local coq = require "coq"

require'lspconfig'.pyright.setup{}


local clangd_setup = {
    on_attach = function(client, bufnr)

    end,
}

require'lspconfig'.clangd.setup(coq.lsp_ensure_capabilities())

-- to generate compile_commands.json file use 
-- cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1
