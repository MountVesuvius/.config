local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end


-- friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"


cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-i>"] = cmp.mapping.select_prev_item(),
        ["<C-k>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.complete(), -- show completion
        -- ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),

    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = "luasnip" },
        -- { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
    }),
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup { capabilities = capabilities }
require('lspconfig').tsserver.setup { capabilities = capabilities }
require('lspconfig').gopls.setup { capabilities = capabilities }
require('lspconfig').pyright.setup { capabilities = capabilities }
require('lspconfig').eslint.setup { capabilities = capabilities }

-- require('lspconfig').clangd.setup { capabilities = capabilities }
-- require('lspconfig').volar.setup { capabilities = capabilities }
-- require('lspconfig').sqls.setup { capabilities = capabilities }
-- require('lspconfig').ruff_lsp.setup { capabilities = capabilities }
-- require('lspconfig').tailwindcss.setup { capabilities = capabilities }
-- require('lspconfig').marksman.setup { capabilities = capabilities }
