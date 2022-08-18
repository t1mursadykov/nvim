require('plugins')
require('plugins.lsp')
require('plugins.airline')
require('plugins.treesitter')
require('plugins.tree')
require('plugins.telescope')
require('plugins.which_key')

require('options')
-- Transparent background 
-- TODO: remove from this file
vim.cmd("highlight Normal guibg=none")

--Open tree
vim.cmd("NvimTreeOpen")


