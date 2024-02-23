-- 2024 Update
return require('packer').startup(function(use)

    use({
        'wbthomason/packer.nvim',
        commit = '1d0cf98a561f7fd654c970c49f917d74fafe1530',
    })

    use({
        'projekt0n/github-nvim-theme',
        commit = '806903c1b66a6b29347871922acd7d830a9d5c6a',
        config = function()
            require('github-theme').setup({
                options = {
                    transparent = true,
                    styles = {
                        comments = 'italic',
                        functions = 'bold',
                        keywords = 'italic',
                        variables = 'bold',
                        conditionals = 'bold',
                        constants = 'bold',
                        numbers = 'NONE',
                        operators = 'bold',
                        strings = 'italic,bold',
                        types = 'bold',
                    },
                },
                specs = {
                    github_dark_dimmed = {
                        syntax = {
                            keyword = '#ff0000',
                            variable = '#6cb6ff',
                            string = '#94ff8e',
                        },
                    },
                },
        })
        vim.cmd('colorscheme github_dark_dimmed')
    end})

    use({
        'numToStr/Comment.nvim',
        commit = '0236521ea582747b58869cb72f70ccfa967d2e89'
    })

    use 'Enrique-ZA/nvim-hooklinesinker'

    use({
        'udalov/kotlin-vim',
        commit = '53fe045906df8eeb07cb77b078fc93acda6c90b8'
    })

     -- lsp --
    use({
        'VonHeikemen/lsp-zero.nvim',
        commit = '96974fe970c37bd3879ad8b6be4fe7ddfad75680'
    })
    use({
        'neovim/nvim-lspconfig',
        commit = '0d29cad8de3b2c654315203fc1fe12fde722a18a'
    })
    use({
        'williamboman/mason.nvim',
        commit = '74eac861b013786bf231b204b4ba9a7d380f4bd9'
    })
    use({
        'williamboman/mason-lspconfig.nvim',
        commit = 'e86a4c84ff35240639643ffed56ee1c4d55f538e'
    })

    use({
        'onsails/lspkind-nvim',
        commit = '57610d5ab560c073c465d6faf0c19f200cb67e6e'
    })

    use({
        'hrsh7th/nvim-cmp',
        commit = '51f1e11a89ec701221877532ee1a23557d291dd5'
    })

    use({
        'hrsh7th/cmp-buffer',
        commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa'
    })

    use({
        'hrsh7th/cmp-path',
        commit = '91ff86cd9c29299a64f968ebb45846c485725f23'
    })

    use({
        'hrsh7th/cmp-cmdline',
        commit = '8ee981b4a91f536f52add291594e89fb6645e451'
    })

    use({
        'saadparwaiz1/cmp_luasnip',
        commit = '18095520391186d634a0045dacaa346291096566'
    })

    use({
        'hrsh7th/cmp-nvim-lsp',
        commit = '44b16d11215dce86f253ce0c30949813c0a90765'
    })

    use({
        'hrsh7th/cmp-nvim-lua',
        commit = 'f12408bdb54c39c23e67cab726264c10db33ada8'
    })

    use({
        'hrsh7th/cmp-nvim-lsp-signature-help',
        commit = '3d8912ebeb56e5ae08ef0906e3a54de1c66b92f1'
    })
    use({
        'jose-elias-alvarez/null-ls.nvim',
        commit = '0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7'
    })
    use({
        'L3MON4D3/LuaSnip',
        commit = '409535b8fc54c650eb845b0c35e0cc7f08810284'
    })
    use({
        'rafamadriz/friendly-snippets',
        commit = '377d45475b49e37460a902d6d569d2093d4037d0'
    })
     -- lsp --

    use({
        'MunifTanjim/prettier.nvim',
        commit = '9a3086f2fdd54d4ef08cab4583957123f66bc9dd'
    })

    use({
        'ecthelionvi/NeoColumn.nvim',
        commit = '456bd054b65a5a8bb8a8cb4b3afc5bbbedcb0994'
    })

    use {'iamcco/markdown-preview.nvim',ft={'markdown','vim-plug'},run=function()vim.fn['mkdp#util#install']()end}

     -- telescope --
    use({
        'nvim-telescope/telescope.nvim',
        commit = '2d92125620417fbea82ec30303823e3cd69e90e8'
    })
    use({
        'nvim-lua/plenary.nvim',
        commit = '267282a9ce242bbb0c5dc31445b6d353bed978bb'
    })
    use({
        "ThePrimeagen/harpoon",
        branch = "master",
        commit = "21f4c47c6803d64ddb934a5b314dcb1b8e7365dc",
    })
    -- telescope --

    use({
        'lukas-reineke/indent-blankline.nvim',
        commit = '4541d690816cb99a7fc248f1486aa87f3abce91c'
    })

    use({
        'danymat/neogen',
        commit = 'cb1f384df804c1bf729332c4f728253fe17962d4',
        tag = '*'
    })

    use({
        'famiu/bufdelete.nvim',
        commit = '07d1f8ba79dec59d42b975a4df1c732b2e4e37b4'
    })

    use {
        'razzmatazz/csharp-language-server',
        tag = '0.5.7',
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

    use ({
        'nvim-treesitter/nvim-treesitter',
        commit = 'cc360a9beb1b30d172438f640e2c3450358c4086'
    })

end)
