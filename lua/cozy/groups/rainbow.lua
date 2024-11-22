local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- rainbow-delimiters
    RainbowDelimiterRed    = { fg = c.red1 },
    RainbowDelimiterOrange = { fg = c.orange1 },
    RainbowDelimiterYellow = { fg = c.yellow1 },
    RainbowDelimiterGreen  = { fg = c.green1 },
    RainbowDelimiterBlue   = { fg = c.blue1 },
    RainbowDelimiterViolet = { fg = c.purple1 },
    RainbowDelimiterCyan   = { fg = c.cyan1 },
  }
end

return M
