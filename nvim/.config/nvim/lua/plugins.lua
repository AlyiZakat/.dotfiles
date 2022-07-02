vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tomasiser/vim-code-dark'
	use {'neoclide/coc.nvim', branch = 'release'}
	use {'nvim-treesitter/nvim-treesitter', commit = '749f72d'} -- 15-01-22 work with Lua and PHP
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		}
	}
	-- use {'nvim-treesitter/nvim-treesitter', commit = '45d384e'} -- 19-02-22 work PHP not work Lua
end)
