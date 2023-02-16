local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
	}, { { name = "buffer" }, { name = "path" } }),
	mapping = require("keybindings").cmp(cmp),
	formatting = require('lsp.ui').formatting
})

cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
cmp.event:on(
	'confirm_done',
	cmp_autopairs.on_confirm_done()
)
