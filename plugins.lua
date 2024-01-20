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
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
        config = function()
            require("custom.configs.harpoon")
        end
    },
    {
      'mrcjkb/rustaceanvim',
      version = '^3', -- Recommended
      ft = { 'rust' },
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {},
        config = function(_, opts) require("lsp_signature").setup(opts) end
    }
}
return plugins
