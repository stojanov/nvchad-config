local plugins = {
    {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "rust-analyzer"
            }
        }
    },
    {
        "Civitasv/cmake-tools.nvim",
        enabled = true,
        lazy = false,
    },
    {
       "stevearc/overseer.nvim",
        opts = {}
    },
    {
        "simrat39/rust-tools.nvim",
        ft = "rust",
        dependencies = "neovim/nvim-lspconfig",
        opts = function()
            return require("custom.configs.rust-tools")
        end,
        config = function(_, opts)
            require("rust-tools").setup(opts)
        end
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
        config = function()
            require("custom.configs.harpoon")
        end
    }
}
return plugins
