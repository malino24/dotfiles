return {
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
            filesystem = {
                filtered_items = {
                    visible = true,
                },

                window = {
                    mappings = {
                        ["<cr>"] = function(state)
                            local node = state.tree:get_node()
                            local commands = require("neo-tree.sources.filesystem.commands")

                            if node.type == "directory" then
                                commands.toggle_node(state)
                            else
                                commands.open(state)
                                require("neo-tree.command").execute({ action = "close" })
                            end
                        end,
                    },
                },
            },
        },

        keys = {
            {
                "<C-b>",
                "<Cmd>Neotree toggle<CR>",
                { desc = "Toggle neo-tree" },
            },
        },
    },
}
