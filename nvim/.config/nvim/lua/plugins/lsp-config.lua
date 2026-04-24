return {
    { 
        "mason-org/mason.nvim",

        config = function()
            require("mason").setup({
                ensure_installed = {
                    "lua-language-server",
                },
            })
        end
    },
 
    { 
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable("lua_ls")
        end
    },
}
