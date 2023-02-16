local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	vim.notify("nvim-treesitter not found")
	return 
end

treesitter.setup({
	ensure_installed = { "c", "json", "html", "css",
						"vim", "lua", "javascript", 
						"typescript", "tsx", "rust" },
	hightlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
})
