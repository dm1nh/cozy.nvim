local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIconsAzure  = { fg = c.matcha1 },
    MiniIconsBlue   = { fg = c.blue1 },
    MiniIconsCyan   = { fg = c.cyan1 },
    MiniIconsGreen  = { fg = c.green1 },
    MiniIconsGrey   = { fg = c.white2 },
    MiniIconsOrange = { fg = c.orange1 },
    MiniIconsPurple = { fg = c.purple1 },
    MiniIconsRed    = { fg = c.red1 },
    MiniIconsYellow = { fg = c.yellow1 },
  }
end

return M
