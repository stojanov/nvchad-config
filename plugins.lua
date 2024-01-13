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
      'mrcjkb/rustaceanvim',
      version = '^3', -- Recommended
      ft = { 'rust' },
    }
}
return plugins
