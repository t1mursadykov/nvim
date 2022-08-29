vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- deps
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep' --telescope

    use 'neovim/nvim-lspconfig'

    -- Airline
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    
    -- Themes
    use 't1mursadykov/nord.nvim'

    use { 
      'projekt0n/github-nvim-theme',
      config = function()
        require('github-theme').setup({
          theme_style = "dark",
          transparent = true,
          dark_sidebar = false,
        })
      end
    }

    -- Syntax
    use "nvim-treesitter/nvim-treesitter"
    -- Treesitter plugins
        use "windwp/nvim-ts-autotag"    -- HTML autocomplete
        use "p00f/nvim-ts-rainbow"      -- Brackets colors
        use "windwp/nvim-autopairs"     -- Brackets auto closings

    --Files tree
    use 'kyazdani42/nvim-tree.lua'

    use {
          'nvim-telescope/telescope.nvim', 
          tag = '0.1.0',
    }

    use 'ms-jpq/coq_nvim'
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'
    
    use {
      "folke/which-key.nvim"
    }

    -- use 'romgrk/barbar.nvim'

    use 'bryanmylee/vim-colorscheme-icons'

    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    use "terrortylor/nvim-comment"
    
    use {
	    'crusj/bookmarks.nvim',
	    branch = 'main',
	    requires = { 'kyazdani42/nvim-web-devicons' }
    }
end)
