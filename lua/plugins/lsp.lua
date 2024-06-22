return {
    { 'VonHeikemen/lsp-zero.nvim',         branch = 'v3.x' },
    {
        'neovim/nvim-lspconfig',
        -- IMPORTANT: someone smarter than me got this workign so dont touch
        -- this is used to enable typsciprt auto completes and highlights
        lazy = false,
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({})
            lspconfig.eslint.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.angularls.setup({})
            lspconfig.rust_analyzer.setup{}
        end,
        -- IMPORTANT --
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'mason.nvim',                        enabled = false },
    { 'williamboman/mason-lspconfig.nvim', enabled = false },
}
