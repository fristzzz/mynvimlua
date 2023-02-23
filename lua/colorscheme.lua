-- local colorscheme = "onedark"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- 	vim.notify("colorscheme " .. colorscheme .. " not found! ")
-- 	return
-- end


--- require('onedark').setup {
--- 	style = 'deep',
--- 	transparent = true,
--- 	term_colors = false,
--- }
--- require('onedark').load()

--Put this lines inside your vimrc to set the colorscheme
require("nebulous").setup {
  variant = "midnight",
  disable = {
    background = true,
    endOfBuffer = false,
    terminal_colors = false,
  },
  italic = {
    comments   = false,
    keywords   = true,
    functions  = false,
    variables  = true,
  },
}
