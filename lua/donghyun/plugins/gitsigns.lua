-- import gitsigns plugin safely
local gitsigns_setup, gitsigns = pcall(require, "gitsigns")
if not gitsigns_setup then
	return
end

local scrollbar_setup, git_scroll_bar = pcall(require, "scrollbar.handlers.gitsigns")
if not scrollbar_setup then
  return
end

-- configure/enable gitsigns
gitsigns.setup()

-- configure/enable gitsigns & scrollbar integration
git_scroll_bar.setup()
