local status, lualine = pcall(require, "lualine")
if not status then 
    return
end

local lualine_nord = require("lualine.themes.nord")

local new_colors = {
    blue = "#65D1FF",
    green = "#3EFFDC",
    violet = "#FF61EF",
    yellow = "#FFDA7B",
    black = "#000000",
}

lualine_nord.normal.a.bg = new_colors.blue
lualine_nord.insert.a.bg = new_colors.green
lualine_nord.visual.a.bg = new_colors.violet
lualine_nord.command = {
    a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black,
    }
}

lualine.setup({
    options = {
        theme = 'nord'
    }
})
