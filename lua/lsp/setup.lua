require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
        	package_pending = "➜",
        	package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"gopls",
		"clangd",
		"rust_analyzer",
		"jsonls",
		"bashls",
	},
})


require 'lspconfig'.rust_analyzer.setup{}
require 'lspconfig'.gopls.setup{}
require 'lspconfig'.clangd.setup{}
require 'lspconfig'.lua_ls.setup{}
require 'lspconfig'.tsserver.setup{}
require 'lspconfig'.jsonls.setup{}
require 'lspconfig'.bashls.setup{}
require 'lspconfig'.pylsp.setup{}
require 'lspconfig'.r_language_server.setup{}

-- for name, _ in pairs(servers) do
-- 	local server_is_found, server = lsp_installer.get_server(name)
-- 	if server_is_found then
-- 		if not server:is_installed() then
-- 			print("Installing " .. name)
-- 			server:install()
-- 		end
-- 	end
-- end

-- local config = servers[server.name]
-- if config == nil then
-- 	return 
-- end
-- if config.on_setup then
-- 	config.on_setup(server)
-- else
-- 	server:setup({})
-- end


