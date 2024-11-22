local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.blue1 },
    AlphaHeader      = { fg = c.accent },
    AlphaHeaderLabel = { fg = c.fg },
    AlphaFooter      = { fg = c.purple1 },
    AlphaButtons     = { fg = c.cyan1 },
  }
end

return M
