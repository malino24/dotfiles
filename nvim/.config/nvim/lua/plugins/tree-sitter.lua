return {
    -- TreeSitter
    {
        "neovim-treesitter/nvim-treesitter",
        dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
        build = ":TSUpdate",
        config = function()
            local ts = require("nvim-treesitter")
            
            ts.install({ 
                "lua",
                "python",
                "javascript",
                "markdown",
                "c_sharp"
            })
        end
    },
}
