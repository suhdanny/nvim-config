local setup, scrollbar = pcall(require, "scrollbar")
if not setup then
    return
end

local macchiato = require("catppuccin.palettes").get_palette "macchiato"

scrollbar.setup({
  marks = {
    Info = {
      color = macchiato.teal,
    },
    Error = {
      color = macchiato.red,
    },
    Warn = {
      color = macchiato.yellow,
      priority = 7,
    },
    GitAdd = {
      color = macchiato.green,
      priority = 3,
    },
    GitChange = {
      color = macchiato.blue,
      priority = 3,
    },
    GitDelete = {
      color = macchiato.maroon,
      priority = 3,
    }
  },
  handlers = {
    gitsigns = true,
  },
})
