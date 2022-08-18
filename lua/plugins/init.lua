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
      'kdheepak/tabline.nvim',
      config = function()
        require'tabline'.setup {
          -- Defaults configuration options
          enable = true,
          options = {
          -- If lualine is installed tabline will use separators configured in lualine by default.
          -- These options can be used to override those settings.
            section_separators = {'', ''},
            component_separators = {'', ''},
            max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
            show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
            show_devicons = true, -- this shows devicons in buffer section
            show_bufnr = false, -- this appends [bufnr] to buffer section,
            show_filename_only = false, -- shows base filename only instead of relative path in filename
            modified_icon = "+ ", -- change the default modified icon
            modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
            show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
          }
        }
        vim.cmd[[
          set guioptions-=e " Use showtabline in gui vim
          set sessionoptions+=tabpages,globals " store tabpages and globals in session
        ]]
      end,
      requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
    }


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


end)
