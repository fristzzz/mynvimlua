require("formatter").setup {
  filetype = {
	rust = {
		function()
			return {
				exe = "rustfmt",
				stdin = true,
			}
		end,
	}
  }
}

vim.api.nvim_exec(
	[[
		augroup FormatAutogroup
		autocmd!
		autocmd BufWritePost * FormatWrite
		augroup END
	]],
	true
)
