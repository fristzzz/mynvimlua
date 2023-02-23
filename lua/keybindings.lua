vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap

local opt = { noremap = true, silent = true }

map("n", "<leader>h", ":noh<CR>", opt)
map("n", "<leader>w", ":w<CR>", opt)
map("n", "<leader>q", ":q<CR>", opt)
-- cancel default function of 's'
map("n", "s", "", opt)

-- windows split
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- close window
map("n", "sc", "<C-w>c", opt)
-- close others
map("n", "so", "<C-w>o", opt)
-- window control
map("n", "<C-n>", ":vertical resize -2<CR>", opt)
map("n", "<C-m>", ":vertical resize +2<CR>", opt)

-- visual mode indent
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- move code
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- cursur movement
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)

local pluginKeys = {}
-- nvim-tree
map("n", "<leader>f", ":NvimTreeToggle<CR>", opt)
pluginKeys.nvimTreeList = {
	{ key = ".", action = "toggle_dotfiles" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "x", action = "cut" },
}
pluginKeys.mapLSP = function(mapbuf)
	mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
	mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)

    mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
    mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
    mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)

	  -- diagnostic
	mapbuf("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
	mapbuf("n", "[g", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
	mapbuf("n", "]g", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
	mapbuf("n", "<leader>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
end
pluginKeys.mapLSP(vim.keymap.set)



pluginKeys.cmp = function(cmp)
	local feedkey = function(key, mode)
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
	end

	local has_words_before = function()
		local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	end
	return {
		-- 出现补全
		["<A-.>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),

		-- 取消
		["<A-,>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close()
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				local entry = cmp.get_selected_entry()
				if not entry then
					cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
					cmp.confirm()
				else
					cmp.confirm()
				end
			else 
				fallback()
		    end
		end, { "i", "s", "c", }),

		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item()
			elseif vim.fn["vsnip#jumpable"](-1) == 1 then
				feedkey("<Plug>(vsnip-jump-prev)", "")
			end
		end, { "i", "s" }),

		-- [''] = cmp.mapping.confirm({ select = true }),
		["<Down>"] = cmp.mapping(function (fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, {"i", "s" }),
		["<Up>"] = cmp.mapping(function (fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, {"i", "s" }),


	}
end

return pluginKeys

