-- Open Netrw in the directory of the current file
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>rn", function()
	-- it returns success status, thus you can fallback like so
	if not require("ts-autotag").rename() then
		vim.lsp.buf.rename()
	end
end)
