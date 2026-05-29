return {
    {
        "mfussenegger/nvim-dap",

        dependencies = {
            { "leoluz/nvim-dap-go", opts = {} },
        },

        config = function()
            local dap = require("dap")

            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
            }
        end,

        keys = function()
            local dap = require("dap")

            return {
                { "<leader>db", dap.toggle_breakpoint, desc = "DAP: Toggle breakpoint" },
                { "<F5>", dap.continue, desc = "DAP: Continue" },
                { "<F10>", dap.step_over, desc = "DAP: Step Over" },
                { "<F11>", dap.step_into, desc = "DAP: Step Into" },
                { "<S-F11>", dap.step_out, desc = "DAP: Step Out" },
            }
        end,
    },

    {
        "rcarriga/nvim-dap-ui",

        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
            "folke/lazydev.nvim",
        },

        opts = {},

        config = function(_, opts)
            local dap, dapui = require("dap"), require("dapui")
            dapui.setup(opts)

            require("lazydev").setup({
                library = { "nvim-dap-ui" },
            })

            dap.listeners.after.event_initialized["dapui"] = function()
                dapui.open()
            end

            dap.listeners.before.event_terminated["dapui"] = function()
                dapui.close()
            end

            dap.listeners.before.event_exited["dapui"] = function()
                dapui.close()
            end
        end,
    },
}
