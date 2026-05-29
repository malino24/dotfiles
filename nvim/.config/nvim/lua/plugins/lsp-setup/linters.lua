return {
    {
        "mfussenegger/nvim-lint",
        opts = {},

        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                lua = { "luacheck" },
                -- markdown = { "vale" },
            }

            vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
                callback = function()
                    if vim.bo.modified then
                        require("lint").try_lint()
                    end
                end,
            })
        end,

        keys = {
            {
                "<leader>gg",

                function()
                    require("lint").try_lint()
                end,

                desc = "Linter: Try lint",
            },
        },
    },
}
