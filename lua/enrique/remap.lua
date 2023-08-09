-- my rebinds
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>dd", vim.cmd.Ex) -- explorer
vim.keymap.set({"n","v"}, "<C-s>", '<Esc>:Prettier<CR><Esc>:w<CR>') -- save
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:Prettier<CR><Esc>:w<CR>', {noremap = true}) -- save and escape
vim.keymap.set("i", "<S-a><S-a>", "<C-o>0") -- home
vim.api.nvim_set_keymap('n', '<C-x>', ':wq!<CR>', {noremap = false}) -- save and exit
vim.api.nvim_set_keymap('i', '<C-x>', '<Esc>:wq!<CR>', {noremap = false}) --save and exit
vim.api.nvim_set_keymap('v', '<C-x>', ':wq!<CR>', {noremap = false}) --save and exit
vim.keymap.set("i", "<S-f><S-f>", "<C-o>$") -- end
vim.keymap.set("n", "<S-a><S-a>", "<Home>") -- home
vim.keymap.set("n", "<S-f><S-f>", "<End>") -- end
vim.keymap.set("n", "<C-z>", "u") -- undo
vim.keymap.set("i", "<C-z>", "<C-o>u") -- undo
vim.api.nvim_set_keymap('v', '<c-z>', 'u', {noremap = true}) -- undo
vim.keymap.set("i", "<C-y>", "<C-o><C-r><End>") -- redo
vim.keymap.set({"n","v"}, "h", "<F17>") -- remap h to nothing for now
vim.keymap.set({"n","v"}, "j", "h") -- remap left
vim.keymap.set({"n","v"}, "l", "j") -- remap down
vim.keymap.set({"n","v"}, ";", "l") -- remap right
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>", {noremap = true}) -- esc
vim.api.nvim_set_keymap('n', "<C-a>", 'ggVG', {noremap = false})
vim.api.nvim_set_keymap('v', "<C-a>", "<Esc>", {noremap = false})
vim.keymap.set("i", "<C-a>", "<C-o>g<C-o>g<C-o>V<C-o>G", {noremap = false}) -- select all insert
vim.keymap.set("i", "<PageUp>", "") --
vim.keymap.set("i", "<PageDown>", "") --
vim.keymap.set({"n","i"}, "<Up>", "") --
vim.keymap.set({"n","i"}, "<Down>", "") --
vim.keymap.set({"n","i"}, "<Left>", "") -- 
vim.keymap.set({"n","i"}, "<Right>", "") --
vim.keymap.set("i", "<A-j>", "<C-o><Left>") --
vim.keymap.set("i", "<A-k>", "<C-o><Up>") --
vim.keymap.set("i", "<A-l>", "<C-o><Down>") --
vim.keymap.set("i", "<A-;>", "<C-o><Right>") --
vim.keymap.set("n", "<S-e><S-e>", "<C-^>") -- go to previous file
vim.api.nvim_set_keymap('n', '<A-l>', ':set paste<CR>m`o<Esc>j``:set nopaste<CR>', {noremap = true, silent = true}) -- insert new line normal mode
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', {noremap = true}) -- selected up in visual
vim.api.nvim_set_keymap('v', 'L', ':m \'>+1<CR>gv=gv', {noremap = true}) -- selected down in visual
-- vim.api.nvim_set_keymap('n', '<Tab>', '', {noremap = false})
-- vim.api.nvim_set_keymap('i', '<Tab>', '', {noremap = false})
-- vim.api.nvim_set_keymap('v', '<Tab>', '', {noremap = false})
vim.api.nvim_set_keymap('n', '<S-Tab>', '', {noremap = false})
vim.api.nvim_set_keymap('i', '<S-Tab>', '', {noremap = false})
vim.api.nvim_set_keymap('v', '<S-Tab>', '', {noremap = false})
vim.api.nvim_set_keymap('n', '<C-b>', 'qw', {noremap = false})
vim.api.nvim_set_keymap('n', '<C-f>', '@w', {noremap = false})
vim.api.nvim_set_keymap('i', '<F4>f', '{', {noremap = true})
vim.api.nvim_set_keymap('i', '<F4>r', '[', {noremap = true})
vim.api.nvim_set_keymap('i', '<F4>v', '(', {noremap = true})
vim.api.nvim_set_keymap('i', '<F4>j', '}', {noremap = true})
vim.api.nvim_set_keymap('i', '<F4>u', ']', {noremap = true})
vim.api.nvim_set_keymap('i', '<F4>n', ')', {noremap = true})

-- hooklinesinker
vim.api.nvim_set_keymap('n', 'fd', [[<cmd>lua require'hooklinesinker'.save_position()<CR>]], {noremap = false, silent = true})
vim.api.nvim_set_keymap('n', 'u', [[<cmd>lua require'hooklinesinker'.return_position()<CR>]], {noremap = false, silent = true})

-- markdown preview
vim.api.nvim_set_keymap('n', '<F4>f', ':MarkdownPreview<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F4>j', ':MarkdownPreviewStop<CR>', {noremap = true, silent = true})

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- lsp-zero
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    -- 'csharp_ls',
    'ocamllsp',
    'gopls',
    'lua_ls',
    'eslint',
    'tsserver',
    'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-l>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-f>'] = cmp.mapping.confirm({ select = true }),
    ["<C-y>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})


lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>K", function() vim.lsp.buf.hover() end, opts)
    --[[  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)--]]
end)

lsp.setup()

local comment = require('Comment')

comment.setup({
        ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = nil,
        ---Block-comment toggle keymap
        block = nil,
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = nil,
        ---Add comment on the line below
        below = nil,
        ---Add comment at the end of line
        eol = nil,
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
})

vim.diagnostic.config({
    virtual_text = true
})

-- codeium
-- vim.api.nvim_set_keymap('i', '<Tab>', '<Esc>:call codeium#Accept()<CR>a', {noremap = false, silent = true})
-- vim.api.nvim_set_keymap('i', '<S-Tab>', '<Esc>:call codeium#Clear()<CR>a', {noremap = false, silent = true})

-- cursor
-- vim.cmd("set guicursor=n:block")
vim.cmd("set guicursor=n:ver25-blinkon500")
vim.cmd("set guicursor=v:ver25-blinkon0")
vim.cmd("set guicursor=i:ver25-blinkon100")

-- vim.api.nvim_set_keymap('v', '<C-d>', 'y:call system("wl-copy", getreg(\"\"))<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-d>', 'y:call system("wl-copy " . shellescape(getreg(\'\')))<CR>', {noremap = true, silent = true})

-- vim.api.nvim_set_option('colorcolumn', '90')
vim.api.nvim_exec([[
  autocmd BufRead,BufNewFile * setlocal colorcolumn=90
]], false)

require('luasnip/loaders/from_vscode').load()
-- require('luasnip/loaders/from_vscode').load({ paths = { "./friendly-snippets" } })

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>hh", mark.add_file)
vim.keymap.set("n", "<C-y>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>jj", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>kk", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>ll", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>;;", function() ui.nav_file(4) end)

-- require('github-theme').override.palettes({
--     github_dark_dimmed = {
--         comment = '#36D97D',
--     },
-- })

local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.keymap.set("n", "<leader>ghlkfhh", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })

      -- format on save
      vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
      vim.api.nvim_create_autocmd(event, {
        buffer = bufnr,
        group = group,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr, async = async })
        end,
        desc = "[lsp] format on save",
      })
    end

    if client.supports_method("textDocument/rangeFormatting") then
      vim.keymap.set("x", "<Leader>ghlkfhh", function()
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { buffer = bufnr, desc = "[lsp] format" })
    end
  end,
})

local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
    cli_options = {
    config_precedence = "cli-override",
    arrow_parens = "always",
    bracket_spacing = true,
    bracket_same_line = true,
    embedded_language_formatting = "auto",
    end_of_line = "lf",
    html_whitespace_sensitivity = "css",
    jsx_single_quote = false,
    jsx_bracket_same_line = true,
    tsx_single_quote = false,
    tsx_bracket_same_line = true,
    print_width = 90,
    prose_wrap = "preserve",
    quote_props = "as-needed",
    semi = true,
    single_attribute_per_line = false,
    single_quote = false,
    tab_width = 2,
    trailing_comma = "es5",
    use_tabs = false,
    vue_indent_script_and_style = false,
  },
})

-- vim.api.nvim_set_keymap('n', '=', ':Prettier<CR>', {noremap = false, silent = true})
-- vim.api.nvim_set_keymap('x', '=', ':Prettier<CR>', {noremap = false, silent = true})
-- vim.api.nvim_set_keymap('v', '=', ':Prettier<CR>', {noremap = false, silent = true})

-- omnisharp extended plugin
-- local pid = vim.fn.getpid()
-- local omnisharp_bin = "/home/enrique/personal/omnisharp/OmniSharp"
--
-- local omni_config = {
--   handlers = {
--     ["textDocument/definition"] = require('omnisharp_extended').handler,
--   },
--   cmd = { omnisharp_bin, '--languageserver' , '--hostPID', tostring(pid) },
--   -- rest of your settings
-- }
--
-- require'lspconfig'.omnisharp.setup(omni_config)
--
--
-- vim.api.nvim_set_keymap('n', '<leader>od', '<cmd>lua require("omnisharp_extended").telescope_lsp_definitions()<cr>', {noremap = true})
--
--
-- local ok, godot = pcall(require, "godot")
-- if not ok then
--     return
-- end
--
-- -- default config
-- local godot_config = {
--     -- bin = "godot",
--     -- gui = {
--     --     console_config = @config for vim.api.nvim_open_win
--     -- },
-- }
--
-- godot.setup(godot_config)
--
-- local function map(m, k, v)
--     vim.keymap.set(m, k, v, { silent = true })
-- end
--
-- map("n", "<leader>qr", godot.debugger.debug)
-- map("n", "<leader>qd", godot.debugger.debug_at_cursor)
-- map("n", "<leader>qq", godot.debugger.quit)
-- map("n", "<leader>qc", godot.debugger.continue)
-- map("n", "<leader>qs", godot.debugger.step)
--

function SetDiagnosticsToQuickfix()
  local bufnr = vim.api.nvim_get_current_buf()
  local diagnostics = vim.diagnostic.get(bufnr)

  local qflist = {}
  for _, diagnostic in ipairs(diagnostics) do
    -- Check severity level; only add if it's 1 ('Error')
    if diagnostic.severity == 1 then
      table.insert(qflist, {
        -- bufnr = bufnr,
        lnum = diagnostic.lnum + 1, -- 'lnum' is 0-indexed in the diagnostics
        -- col = diagnostic.col + 1,
        text = diagnostic.message,
        type = 'E' -- 'E' for Error
      })
    end
  end

  vim.fn.setqflist(qflist)
end

function ClearQuickfix()
  vim.fn.setqflist({}, 'r') -- Clears the quickfix list
  vim.cmd('cclose')         -- Closes the quickfix window
end

vim.api.nvim_set_keymap('n', 'h', ':lua SetDiagnosticsToQuickfix()<CR>:copen<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', ':lua ClearQuickfix()<CR>', { noremap = true, silent = true })


vim.lsp.set_log_level("debug")

local lspconfig = require('lspconfig')

lspconfig.ocamllsp.setup({
    root_dir = function(fname)
        return lspconfig.util.root_pattern("_opam", "dune", ".merlin")(fname) or vim.fn.getcwd()
    end,
})

