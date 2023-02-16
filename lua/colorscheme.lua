-- local colorscheme = "onedark"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- 	vim.notify("colorscheme " .. colorscheme .. " not found! ")
-- 	return
-- end


require('onedark').setup {
	style = 'dark',
	transparent = true,
	term_colors = false,
}
require('onedark').load()
