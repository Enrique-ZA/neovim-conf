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
            {'hrsh7th/cmp-cmdline'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'hrsh7th/cmp-nvim-lsp-signature-help'},
            {'jose-elias-alvarez/null-ls.nvim'},



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
use 'lukas-reineke/indent-blankline.nvim' -- show indents

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}

use "Hoffs/omnisharp-extended-lsp.nvim" -- omnisharp

use { "danymat/neogen", tag = "*" } -- annotation

use 'famiu/bufdelete.nvim'
-- use 'jiangmiao/auto-pairs'


end)

