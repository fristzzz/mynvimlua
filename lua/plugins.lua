local packer = require("packer")
packer.startup(
	function(use)

		use('wbthomason/packer.nvim')

		use 'navarasu/onedark.nvim'
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {
				'nvim-tree/nvim-web-devicons',
			}
		}
		use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt= true } }
		
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		use 'neovim/nvim-lspconfig'
		use "williamboman/mason.nvim"
		use 'williamboman/mason-lspconfig.nvim'
		use "hrsh7th/nvim-cmp"
		use "hrsh7th/vim-vsnip"
		use "hrsh7th/cmp-vsnip"
		use "hrsh7th/cmp-nvim-lsp"
		use "hrsh7th/cmp-buffer"
		use "hrsh7th/cmp-path"
		use "hrsh7th/cmp-cmdline"

		use "rafamadriz/friendly-snippets"

		use "onsails/lspkind-nvim"
		use "lukas-reineke/indent-blankline.nvim"

		use {
			"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
		}
	end

)

