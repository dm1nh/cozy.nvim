local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.purple1, bold = true },
    NeotestBorder       = { fg = c.blue1 },
    NeotestDir          = { fg = c.blue1 },
    NeotestExpandMarker = { fg = c.fg },
    NeotestFailed       = { fg = c.red1 },
    NeotestFile         = { fg = c.matcha1 },
    NeotestFocused      = { fg = c.yellow1 },
    NeotestIndent       = { fg = c.fg },
    NeotestMarked       = { fg = c.blue1 },
    NeotestNamespace    = { fg = c.green2 },
    NeotestPassed       = { fg = c.green1 },
    NeotestRunning      = { fg = c.yellow1 },
    NeotestSkipped      = { fg = c.blue1 },
    NeotestTarget       = { fg = c.blue1 },
    NeotestTest         = { fg = c.fg },
    NeotestWinSelect    = { fg = c.blue1 },
  }
end

return M
