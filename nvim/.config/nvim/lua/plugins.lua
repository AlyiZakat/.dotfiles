return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use "Mofiqul/vscode.nvim"
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        -- or                            , branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use {
        "hrsh7th/nvim-cmp",     -- Autocompletion plugin
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmph
        "hrsh7th/cmp-nvim-lsp-signature-help",
    }
    use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp
    use "L3MON4D3/LuaSnip"         -- Snippets plugin
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
end)

