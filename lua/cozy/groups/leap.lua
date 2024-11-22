local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.magenta, fg = c.fg, bold = true },
    LeapLabel          = { fg = c.magenta2, bold = true },
    LeapBackdrop       = { fg = c.dark3 },
  }
end

return M
