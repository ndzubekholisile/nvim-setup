
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set to `false` if you experience performance issues.
                additional_vim_regex_highlighting = false,
            },
            
            indent = {
                enable = true
            },
        })
    end,
}

