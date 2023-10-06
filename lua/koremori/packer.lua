vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Highlighting
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

    -- Highlighting context
    use("nvim-treesitter/nvim-treesitter-context")

    -- Manage buffers
    use("theprimeagen/harpoon")

    -- Undootree
    use("mbbill/undotree")

    -- Handle git operations
    use("tpope/vim-fugitive")


    -- Fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } }
    })

    -- Cool colorscheme
    use({
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        config = function()
            vim.cmd("colorscheme kanagawa-dragon")
        end
    })

    -- LSP settings
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        }
    })
end)
