local builtin = require("telescope.builtin")

return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",

            -- optional but recommended
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },

        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {
                    preview_cutoff = 0,

                    horizontal = {
                        preview_width = 0.5,
                    },
                },
            },
        },

        keys = {
            { "<leader>ff", builtin.find_files, desc = "Telescope: Find files" },
            { "<leader>fg", builtin.live_grep, desc = "Telescope: Live grep" },
            { "<leader>fb", builtin.buffers, desc = "Telescope: Show buffers" },
            { "<leader>fh", builtin.help_tags, desc = "Telescope: Show help tags" },

            { "<leader>sh", builtin.help_tags, desc = "Telescope: [S]earch [H]elp" },
            { "<leader>sk", builtin.keymaps, desc = "Telescope: [S]earch [K]eymaps" },
            { "<leader>sf", builtin.find_files, desc = "Telescope: [S]earch [F]iles" },
            { "<leader>ss", builtin.builtin, desc = "Telescope: [S]earch [S]elect Telescope" },
            { "<leader>sw", builtin.grep_string, mode = { "n", "v" }, desc = "Telescope: [S]earch current [W]ord" },
            { "<leader>sg", builtin.live_grep, desc = "Telescope: [S]earch by [G]rep" },
            { "<leader>sd", builtin.diagnostics, desc = "Telescope: [S]earch [D]iagnostics" },
            { "<leader>sr", builtin.resume, desc = "Telescope: [S]earch [R]esume" },
            { "<leader>s.", builtin.oldfiles, desc = "Telescope: [S]earch Recent Files (\".\" for repeat)" },
            { "<leader>sc", builtin.commands, desc = "Telescope: [S]earch [C]ommands" },
            { "<leader><leader>", builtin.buffers, desc = "Telescope: [ ] Find existing buffers" },

            {
                "<leader>sn",

                function()
                    builtin.find_files({ cwd = vim.fn.stdpath("config") })
                end,

                desc = "[S]earch [N]eovim files",
            },

            {
                "<leader>/",

                function()
                    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                        winblend = 10,
                        previewer = false,
                    }))
                end,

                desc = "Telescope: [/] Fuzzily search in current buffer",
            },
        },
    },

    {
        "nvim-telescope/telescope-ui-select.nvim",

        dependencies = {
            "nvim-telescope/telescope.nvim",
        },

        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({
                            -- even more opts
                        }),

                        -- pseudo code / specification for writing custom displays, like the one
                        -- for "codeactions"
                        -- specific_opts = {
                        --   [      kind] = {
                        --     make_indexed = function(items) -> indexed_items, width,
                        --     make_displayer = function(widths) -> displayer
                        --     make_display = function(displayer) -> function(e)
                        --     make_ordinal = function(e) -> string
                        --   },
                        --   -- for example to disable the custom builtin "codeactions" display
                        --      do the following
                        --   codeactions = false,
                        -- }
                    },
                },
            })

            -- To get ui-select loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require("telescope").load_extension("ui-select")
        end,
    },
}
