return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'Exafunction/codeium.vim', tag = '1.2.26'}

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

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
            {'onsails/lspkind-nvim'}, --unavailable tag currently
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
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



end)
