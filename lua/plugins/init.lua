vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- deps
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep' --telescope
    use 'bryanmylee/vim-colorscheme-icons'

    -- ################################################
    -- Code Navigation and highlights
    -- ################################################
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind.nvim'

    -- Syntax
    use "nvim-treesitter/nvim-treesitter"
    -- Treesitter plugins
        use "windwp/nvim-ts-autotag"    -- HTML autocomplete
        use "p00f/nvim-ts-rainbow"      -- Brackets colors
        use "windwp/nvim-autopairs"     -- Brackets auto closings
    
    -- COQ
    use 'ms-jpq/coq_nvim'
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'
    
    use 'p00f/clangd_extensions.nvim'
    -- ################################################
    -- Appearance
    -- ################################################
    use 'nvim-lualine/lualine.nvim'
    use 'arkav/lualine-lsp-progress'
    
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*", 
    }

    -- Themes
    use 't1mursadykov/nord.nvim'

    --Files tree
    use 'kyazdani42/nvim-tree.lua'

    -- ################################################
    -- Telescope
    -- ################################################
    use {
          'nvim-telescope/telescope.nvim', 
          tag = '0.1.0',
    }
    
    use {
        'nvim-telescope/telescope-fzf-native.nvim', 
        run = 'make' 
    }
    -- ################################################
    -- Additional
    -- ################################################
    use "folke/which-key.nvim"

    use "terrortylor/nvim-comment"

    use {
	    'crusj/bookmarks.nvim',
	    branch = 'main',
	    requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use 'sindrets/winshift.nvim'

end)
