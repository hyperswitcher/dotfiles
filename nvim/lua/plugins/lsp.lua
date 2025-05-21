return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
        },
        config = function()
            require("mason").setup({
                ui = {
                    border = "rounded",
                }
            })
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    -- "terraformls",
                    "ansiblels",
                    "pylsp",
                    "dockerls",
                    "docker_compose_language_service",
                    "zk"
                },
            })
            require("mason-lspconfig").setup_handlers {
                -- The first entry (without a key) will be the default handler
                -- and will be called for each installed server that doesn't have
                -- a dedicated handler.
                function(server_name)  -- default handler (optional)
                    require("lspconfig")[server_name].setup({})
                end,
                -- Next, you can provide a dedicated handler for specific servers.
                ["lua_ls"] = function()
                    require("lspconfig").lua_ls.setup({
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    })
                end,
                ["zk"] = function()
                    require("lspconfig").zk.setup({
                        settings = {
                            root_dir = "/Users/aleksandrivanov/Nextcloud/Vault/"
                        },
                    })
                    require("telescope").load_extension("zk")
                end,
            }
        end,
    },
    {
        "hrsh7th/nvim-cmp",
    }
}
