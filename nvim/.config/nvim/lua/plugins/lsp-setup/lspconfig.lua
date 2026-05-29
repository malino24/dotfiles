return {
    { "mason-org/mason.nvim", opts = {} },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
            -- "jay-babu/mason-null-ls.nvim",
            "jay-babu/mason-nvim-dap.nvim",
        },

        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    -- Lua
                    "lua-language-server",
                    "stylua",
                    "luacheck",

                    -- C++
                    "clangd",
                    "clang-format",
                    "codelldb",
                    "cmakelang",

                    -- Go
                    "gopls",

                    "goimports",
                    "gofumpt",

                    "golangci-lint",
                    "delve",

                    "gomodifytags",
                    "impl",
                    "gotests",
                },

                auto_update = true,
                run_on_start = true,
            })
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            { "mason-org/mason.nvim" },
            { "neovim/nvim-lspconfig" },
        },

        opts = {
            automatic_enable = true,
        },
    },

    {
        "neovim/nvim-lspconfig",

        lazy = false,

        config = function()
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },

                        diagnostics = {
                            globals = { "vim" },
                        },

                        workspace = {
                            library = {
                                vim.env.VIMRUNTIME,
                                vim.fn.stdpath("config"),
                                vim.fn.stdpath("data") .. "/lazy",
                                vim.fn.expand("~/.config/wezterm/types"),
                            },
                            checkThirdParty = false,
                        },

                        telemetry = { enable = false },
                    },
                },
            })

            vim.lsp.config("gopls", {
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                            shadow = true,
                        },
                        staticcheck = true,
                    },
                },
            })

            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                },
            })

            vim.diagnostic.config({
                virtual_text = true,
                update_in_insert = false,
                underline = true,
            })
        end,
    },
}
