local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    Sneak      = { fg = c.bg_highlight, bg = c.magenta1 },
    SneakScope = { bg = c.bg_visual },
  }
end

return M
