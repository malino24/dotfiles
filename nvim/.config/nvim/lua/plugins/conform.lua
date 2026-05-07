return {
    {
        "stevearc/conform.nvim",

        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
            },
        },

        config = function(_, opts)
            require("conform").setup(opts)

            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end
    }
}
