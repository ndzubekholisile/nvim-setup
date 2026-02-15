return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"c",
			"lua",
			"vim",
			"vimdoc",
			"elixir",
			"javascript",
			"html",
			"python",
			"typescriptreact",
			"typescript",
		})

		require("nvim-treesitter").setup({
			autotag = {
				enable = true,
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
