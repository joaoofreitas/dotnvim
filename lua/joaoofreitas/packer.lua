vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    use {
      'nvim-telescope/telescope.nvim', 
      tag = '0.1.2', 
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'feline-nvim/feline.nvim'
    use 'nvim-tree/nvim-web-devicons'   
    use 'lewis6991/gitsigns.nvim'

    use 'sainnhe/gruvbox-material'
end)
