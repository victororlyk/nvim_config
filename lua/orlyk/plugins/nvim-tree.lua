local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then 
    return
end


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- OR setup with some options
nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
      icons = {
          glyphs = {
              folder = {
                  arrow_closed = "", -- arrow when folder is closed
                  arrow_open = "", -- arrow when folder is open
                },
          },
    },
  },
    -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  filters = {
    dotfiles = true,
  },
})
