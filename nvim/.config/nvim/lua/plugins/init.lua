return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tomasiser/vim-code-dark'
--	use {'neoclide/coc.nvim', branch = 'release'}
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use {'akinsho/bufferline.nvim', tag = "v2.*"}
	use {
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
		"hrsh7th/nvim-cmp", -- Autocompletion plugin
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmph
		"hrsh7th/cmp-nvim-lsp-signature-help",

	}
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)
