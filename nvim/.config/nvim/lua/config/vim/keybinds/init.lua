local base = "config.vim.keybinds"
local path = vim.fn.stdpath("config") .. "/lua/" .. base:gsub("%.", "/")

for name, type in vim.fs.dir(path) do
    if type == "file" then
        if name ~= "init.lua" and name:match("%.lua$") then
            local module = name:gsub("%.lua$", "")
            require(base .. "." .. module)
        end
    elseif type == "directory" then
        require(base .. "." .. name)
    end
end
