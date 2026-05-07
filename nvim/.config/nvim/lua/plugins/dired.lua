return {
    "X3eRo0/dired.nvim",

    dependencies = {
        "MunifTanjim/nui.nvim"
    },

    opts = {
        path_separator = "/",                -- Use '/' as the path separator
        show_hidden = true,
        show_icons = true,
        show_banner = false,
        hide_details = false,
        sort_order = "name",
        override_cwd = true,

        -- Define keybindings for various 'dired' actions
        keybinds = {
            dired_enter = "<CR>",
            dired_back = "-",
            dired_up = "_",
            dired_rename = "R",
            dired_create = "d",
            dired_delete = "D",
            dired_delete_range = "D",
            dired_copy = "C",
            dired_copy_range = "C",
            dired_copy_marked = "MC",
            dired_move = "X",
            dired_move_range = "X",
            dired_move_marked = "MX",
            dired_paste = "P",
            dired_mark = "M",
            dired_mark_range = "M",
            dired_delete_marked = "MD",
            dired_shell_cmd = "!",
            dired_shell_cmd_marked = "&",
            dired_toggle_hidden = ".",
            dired_toggle_sort_order = ",",
            dired_toggle_icons = "*",
            dired_toggle_colors = "c",
            dired_toggle_hide_details = "(",
            dired_quit = "q",
        },

        -- Define colors for different file types and attributes
        colors = {
            DiredDimText = { link = {}, bg = "NONE", fg = "505050", gui = "NONE" },
            DiredDirectoryName = { link = {}, bg = "NONE", fg = "9370DB", gui = "NONE" },
            DiredDotfile = { link = {}, bg = "NONE", fg = "626262" },
            DiredFadeText1 = { link = {}, bg = "NONE", fg = "626262", gui = "NONE" },
            DiredFadeText2 = { link = {}, bg = "NONE", fg = "444444", gui = "NONE" },
            DiredSize = { link = { "Normal" }, bg = "NONE", fg = "None", gui = "NONE" },
            DiredUsername = { link = {}, bg = "NONE", fg = "87CEFA", gui = "bold" },
            DiredMonth = { link = { "Normal" }, bg = "NONE", fg = "None", gui = "bold" },
            DiredDay = { link = { "Normal" }, bg = "NONE", fg = "None", gui = "bold" },
            DiredFileName = { link = {}, bg = "NONE", fg = "NONE", gui = "NONE" },
            DiredFileSuid = { link = {}, bg = "ff6666", fg = "000000", gui = "bold" },
            DiredNormal = { link = { "Normal" }, bg = "NONE", fg = "NONE", gui = "NONE" },
            DiredNormalBold = { link = {}, bg = "NONE", fg = "ffffff", gui = "bold" },
            DiredSymbolicLink = { link = {}, bg = "NONE", fg = "33ccff", gui = "bold" },
            DiredBrokenLink = { link = {}, bg = "2e2e1f", fg = "ff1a1a", gui = "bold" },
            DiredSymbolicLinkTarget = { link = {}, bg = "5bd75b", fg = "000000", gui = "bold" },
            DiredBrokenLinkTarget = { link = {}, bg = "2e2e1f", fg = "ff1a1a", gui = "bold" },
            DiredFileExecutable = { link = {}, bg = "NONE", fg = "5bd75b", gui = "bold" },
            DiredMarkedFile = { link = {}, bg = "NONE", fg = "a8b103", gui = "bold" },
            DiredCopyFile = { link = {}, bg = "NONE", fg = "ff8533", gui = "bold" },
            DiredMoveFile = { link = {}, bg = "NONE", fg = "ff3399", gui = "bold" },
        },
    },

    config = function(_, opts)
         -- Set up the 'dired' plugin with custom options
        require("dired").setup(opts)

        vim.keymap.set("n", "<C-x><C-f>", "<cmd>Dired<CR>")
    end
}
