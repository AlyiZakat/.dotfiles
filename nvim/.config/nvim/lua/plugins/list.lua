local lsp_signature_cfg = require('plugins.config.signature')
local treesitter_cfg    = require('plugins.config.treesitter')

require'plugins.config.lsp'
require"nvim-tree".setup()
require"bufferline".setup()
require'lualine'.setup()
require'nvim-treesitter.configs'.setup(treesitter_cfg)
--require'lsp_signature'.setup(lsp_signature_cfg)
