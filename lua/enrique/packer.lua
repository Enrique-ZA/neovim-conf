return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'Enrique-ZA/nvim-hooklinesinker'

    use 'udalov/kotlin-vim'

    use {
        'iamcco/markdown-preview.nvim',
        ft = {'markdown', 'vim-plug'}, -- plugin is only loaded for markdown and vim-plug file types
        run = function() vim.fn['mkdp#util#install']() end
    }

    use {'Exafunction/codeium.vim', tag = '1.2.26'}

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'theprimeagen/harpoon'}

    use { 'numToStr/Comment.nvim' }

    use ('nvim-treesitter/nvim-treesitter',{run = ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'onsails/lspkind-nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets


        }
    }

    use {
        'L3MON4D3/LuaSnip',
        requires = {
            {'rafamadriz/friendly-snippets'},
        }
    }

    use({
        'projekt0n/github-nvim-theme',
        config = function()
            require('github-theme').setup({
                options = {
                    transparent = true,
                    styles = {                 -- Style to be applied to different syntax groups
                    comments = 'italic',     -- Value is any valid attr-list value `:help attr-list`
                    functions = 'bold',
                    keywords = 'italic',
                    variables = 'bold',
                    conditionals = 'bold',
                    constants = 'bold',
                    numbers = 'NONE',
                    operators = 'bold',
                    strings = 'NONE',
                    types = 'bold',
                },
            }
        })
        vim.cmd('colorscheme github_dark_dimmed')
    end
})

use 'ecthelionvi/NeoColumn.nvim'

-- use 'jiangmiao/auto-pairs'


end)
