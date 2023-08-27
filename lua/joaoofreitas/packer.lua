vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    --  Tresitter for colors
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

   -- DAP for debugging _(needs some care)_
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "folke/neodev.nvim"} }
    use "jay-babu/mason-nvim-dap.nvim"

    -- Linter and formatter
    use {
	'mfussenegger/nvim-lint',
	'mhartington/formatter.nvim'
    }
   -- Lsp Setup 
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

    -- Toggleterm
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup({direction = "float"})
    end}

    -- Bottom Line and Icons
    use 'feline-nvim/feline.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'lewis6991/gitsigns.nvim'

    --  Themes
    use 'sainnhe/gruvbox-material'
    use { "catppuccin/nvim", as = "catppuccin" }
end)
