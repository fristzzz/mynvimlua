-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
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
