
return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "vtsls" }, -- Auto-install these
            })

        end,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    -- LSPs (for mason-lspconfig)
                    "lua_ls",
                    "vtsls",
                    -- Formatters/Linters (not LSPs)
                    "stylua",
                    "isort",
                    "black",
                    "prettier",
                },
            })
        end,
    },
}
