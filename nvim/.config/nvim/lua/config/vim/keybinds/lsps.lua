if not package.loaded["telescope.builtin"] then
    return
end

local builtin = require("telescope.builtin")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("telescope-lsp-attach", { clear = true }),

    callback = function(event)
        local buf = event.buf

        vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover" })

        vim.keymap.set("n", "<leader>gd", function()
            if package.loaded["telescocpe"] then
                builtin.lsp_definitions()
            else
                vim.lsp.buf.definition()
            end
        end, { buffer = buf, desc = "Telescope: [G]oto [D]efinition" })

        vim.keymap.set("n", "<leader>gr", function()
            if package.loaded["telescope"] then
                builtin.lsp_references()
            else
                vim.lsp.buf.references()
            end
        end, { buffer = buf, desc = "Telescope: [G]oto [R]eferences" })

        vim.keymap.set("n", "<leader>gi", function()
            builtin.lsp_implementations()
        end, { buffer = buf, desc = "Telescope: [G]oto [I]mplementation" })

        vim.keymap.set("n", "<leader>ds", function()
            builtin.lsp_document_symbols()
        end, { buffer = buf, desc = "Telescope: Open [D]ocument [S]ymbols" })

        vim.keymap.set("n", "<leader>ws", function()
            builtin.lsp_dynamic_workspace_symbols()
        end, { buffer = buf, desc = "Telescope: Open [W]orkspace [S]ymbols" })

        vim.keymap.set("n", "<leader>gtd", function()
            builtin.lsp_type_definitions()
        end, { buffer = buf, desc = "Telescope: [G]oto [T]ype [D]efinition" })

        vim.keymap.set("n", "<leader>ca", function()
            vim.lsp.buf.code_action()
        end, { buffer = buf, desc = "LSP: [C]ode [A]ction" })

        vim.keymap.set("n", "<leader>grn", function()
            vim.lsp.buf.rename()
        end, { buffer = buf, desc = "LSP: [R]e[n]ame" })

        vim.keymap.set("n", "<leader>grD", function()
            vim.lsp.buf.declaration()
        end, { buffer = buf, desc = "LSP: [G]oto [D]eclaration" })
    end,
})
