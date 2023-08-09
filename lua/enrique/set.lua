
vim.diagnostic.config({
  virtual_text = {
    -- source = "always",  -- Or "if_many"
    prefix = '■', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always",  -- Or "if_many"
  },
})


function PrintDiagnostics(opts, bufnr, line_nr, client_id)
  bufnr = bufnr or 0
  line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
  opts = opts or {['lnum'] = line_nr}

  local line_diagnostics = vim.diagnostic.get(bufnr, opts)
  if vim.tbl_isempty(line_diagnostics) then return end

  local diagnostic_message = ""
  for i, diagnostic in ipairs(line_diagnostics) do
    diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
    print(diagnostic_message)
    if i ~= #line_diagnostics then
      diagnostic_message = diagnostic_message .. "\n"
    end
  end
  vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

-- vim.lsp.buf.inlay_hint(0)
vim.o.scrolloff = 10

vim.cmd [[
    augroup custom
        au!
        autocmd BufNewFile,BufRead * source ~/.config/nvim/plugin/packer_compiled.lua
        autocmd BufNewFile,BufRead * setlocal spell spelllang=en_us
        " autocmd BufNewFile,BufRead ~/.config/nvim/lua/enrique/packer.lua source
        " autocmd BufNewFile,BufRead ~/.config/nvim/lua/enrique/packer.lua PackerSync
        autocmd! CursorHold * lua PrintDiagnostics() 
    augroup END
]]

-- :setlocal spell spelllang=en_us

-- vim.diagnostic.config({
--   virtual_text = {
--     -- source = "always",  -- Or "if_many"
--     prefix = '●', -- Could be '■', '▎', 'x'
--   },
--   severity_sort = true,
--   float = {
--     source = "always",  -- Or "if_many"
--   },
-- })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.cmd [[
  autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType typescript.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
  autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
]]

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

--[[
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
--]]

vim.opt.swapfile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.api.nvim_set_option('wrap', true)

-- vim.g.AutoPairsFlyMode = 1

require('NeoColumn').setup({
    always_on = true,
    excluded_ft = {},
    fg_color = "#2872B8",
    bg_color = "#2872B8",
    NeoColumn = {"90"},
    custom_NeoColumn = {
        markdown = {"90"}, 
        javascript = {"90"}, 
        lua = {"90"}, 
        typescript = {"90"},
        javascriptreact = {"90"}, 
        typescriptreact = {"90"}, 
        html = {"90"}, 
        css = {"90"},
        go = {"90"},
    },
})


