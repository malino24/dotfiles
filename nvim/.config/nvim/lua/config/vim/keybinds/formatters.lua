vim.keymap.set("n", "<leader>gf", function()
    if package.loaded["conform"] then
        require("conform").format({
            async = true,
            lsp_fallback = true,
        })
    else
        vim.lsp.buf.format()
    end
end, { desc = "LSP: Format" })
