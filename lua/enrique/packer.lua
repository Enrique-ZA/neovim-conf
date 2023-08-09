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

    use ('nvim-treesitter/nvim-treesitter',{rev = 'cc360a9beb1b30d172438f640e2c3450358c4086'},{run = ':TSUpdate'})

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

-- use "Hoffs/omnisharp-extended-lsp.nvim" -- omnisharp

use { "danymat/neogen", tag = "*" } -- annotation

use 'famiu/bufdelete.nvim'
-- use 'jiangmiao/auto-pairs'

use ('MunifTanjim/prettier.nvim', {rev='9a3086f2fdd54d4ef08cab4583957123f66bc9dd'}) 

-- use 'Lommix/godot.nvim'

use {
  'razzmatazz/csharp-language-server',
  tag = '0.5.7', -- specify the version to install
  -- specify the install and update commands
  install_script = [[
  curl -L -o csharp-ls.zip https://github.com/razzmatazz/csharp-language-server/releases/download/0.5.7/csharp-language-server-0.5.7.zip
  unzip csharp-ls.zip
  rm csharp-ls.zip
  ]],
  update_script = [[
  curl -L -o csharp-ls.zip https://github.com/razzmatazz/csharp-language-server/releases/download/0.5.7/csharp-language-server-0.5.7.zip
  unzip csharp-ls.zip
  rm csharp-ls.zip
  ]]
}


end)

