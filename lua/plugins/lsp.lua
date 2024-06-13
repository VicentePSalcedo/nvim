return {
    { 'VonHeikemen/lsp-zero.nvim',         branch = 'v3.x' },
    {
        'neovim/nvim-lspconfig',
        -- IMPORTANT: someone smarter than me got this workign so dont touch
        -- this is used to enable typsciprt auto completes and highlights
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Setup language servers.
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({ capabilities = capabilities })
            lspconfig.eslint.setup({
                on_attach = function(client, bufnr)
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        command = "EslintFixAll",
                    })
                end,
                capabilities = capabilities
            })
            require("lspconfig").eslint.setup({})
        end,
        -- IMPORTANT --
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'mason.nvim',                        enabled = false },
    { 'williamboman/mason-lspconfig.nvim', enabled = false },
}
