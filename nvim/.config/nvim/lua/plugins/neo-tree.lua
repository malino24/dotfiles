return {
    -- neo-tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        opts = {
            -- options go here
        },
        config = function()
            vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
        end
    }
}
