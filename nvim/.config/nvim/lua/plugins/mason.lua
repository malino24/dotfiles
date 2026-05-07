return {
    {
        "mason-org/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        dependencies = {
            "mason-org/mason.nvim",
            -- "mason-org/mason-lspconfig.nvim",
            -- "jaybubu/mason-null-ls.nvim",
            -- "jaybubu/mason-nvim-dap.nvim",
        },

        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    -- LSP's
                    "lua-language-server",
                    "typescript-language-server",

                    -- Formatter's
                    "stylua",

                    -- Linter's
                    "eslint_d",

                    -- DAPs
                },

                auto_update = true,
                run_on_start = true,
           })
        end
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            { "mason-org/mason.nvim" },
            { "neovim/nvim-lspconfig" },
        },

        opts = {
            automatic_enable = false,
        },
    },

    {
        "neovim/nvim-lspconfig",

        lazy = false,

        config = function()
            vim.lsp.config("lua_ls", {})
            vim.lsp.config("ts_ls", {})

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ts_ls")

            vim.diagnostic.config({
                virtual_text = true,
                update_in_insert = false,
                underline = true,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}

--[[
return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "lua-language-server",
                    "typescript-language-server",
                    "stylua",
                    "eslint_d",
                },
                auto_update = false,
                run_on_start = true,
            })
            
            -- Dies ist der entscheidende Befehl, falls die Installation nicht triggert
            -- vim.api.nvim_command('MasonToolsInstall')
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            local lspconfig = require("lspconfig")
            
            require("mason-lspconfig").setup({
                -- Wir lassen den tool-installer die Installation machen
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            -- Diagnostics Konfiguration
            vim.diagnostic.config({
                virtual_text = true,
                update_in_insert = false,
                underline = true,
            })

            -- Keymaps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            -- ... weitere Keymaps
        end,
    },
}
--]]
