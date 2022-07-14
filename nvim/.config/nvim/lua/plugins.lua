vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'tomasiser/vim-code-dark'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lualine/lualine.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
	use {'akinsho/bufferline.nvim', tag = "v2.*"}
end)
