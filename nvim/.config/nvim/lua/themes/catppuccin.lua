return {
    "catppuccin/nvim",

    dependencies = {
        "nvim-lualine/lualine.nvim",
    },

    name = "catppuccin",
    priority = 1000,
    lazy = false,

    config = function()
        -- vim.

        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
            custom_highlights = function(colors)
                return {
                    TelescopeNormal = { fg = colors.blue, bg = "NONE" },
                    TelescopeBorder = { fg = colors.blue, bg = "NONE" },
                    TelescopeTitle = { fg = colors.text, bg = "NONE" }
                }
            end
        })

        -- Setup must be called before loading
        vim.cmd.colorscheme("catppuccin")
    end,
}
