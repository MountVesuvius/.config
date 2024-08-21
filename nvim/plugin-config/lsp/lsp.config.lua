require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "tsserver",
        "gopls",
        "sqls",
        "pyright",
        "eslint", -- not really using this anymore either
        -- "clangd",
    }
})

-- Diagnostics
vim.keymap.set('n', '<leader>i', function()
    -- If we find a floating window, close it.
    local found_float = false
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative ~= '' then
            vim.api.nvim_win_close(win, true)
            found_float = true
        end
    end

    if found_float then
        return
    end

    vim.diagnostic.open_float(nil, { focus = false, scope = 'cursor' })
end, { desc = 'Toggle Diagnostics' })

vim.keymap.set('n', '<leader>in', function()
    -- If we find a floating window, close it.
    local found_float = false
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative ~= '' then
            vim.api.nvim_win_close(win, true)
            found_float = true
        end
    end

    if found_float then
        return
    end

    -- vim.diagnostic.open_float(nil, { focus = false, scope = 'cursor' })
    vim.diagnostic.goto_next()
end, { desc = 'Next Diagnostic' })


-- directly yoinked, will play with a little later
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
            -- ["<leader>dd"] = { "<cmd> lua vim.diagnostic.open_float() <CR>", "?   toggles local troubleshoot" },
    -- this is causing navigational problems atm
    -- vim.keymap.set('n', '<C-K>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- LSP SETUP --
---------------
-- NOTE: You need to add the autocomplete capabilities
-- in the nvim-cmp.config.lua file or else you won't get
-- proper autocomplete. Yes it's dumb, no i haven't
-- figured out a way around it just yet. maybe lsp-zero
-- but that was being a pain in the neck.

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

require'lspconfig'.tsserver.setup{
  init_options = {
    -- plugins = {
    --   {
    --     name = "@vue/typescript-plugin",
    --     location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
    --     languages = {"javascript", "typescript", "vue"},
    --   },
    -- },
  },
  filetypes = {
    "javascript",
    "typescript",
    "vue",
  },
}

require("lspconfig").gopls.setup {}
require("lspconfig").sqls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").eslint.setup {}

-- require("lspconfig").clangd.setup {}
-- require("lspconfig").clangd.setup {}
-- require("lspconfig").volar.setup {}
  -- autofix on save (insanely slow)
  -- on_attach = function(client, bufnr)
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     buffer = bufnr,
  --     command = "EslintFixAll",
  --   })
  -- end,
-- }
-- require("lspconfig").ruff_lsp.setup {}
-- require("lspconfig").tailwindcss.setup {}
-- require("lspconfig").marksman.setup {}
