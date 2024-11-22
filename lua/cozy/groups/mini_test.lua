local M = {}

M.url = "https://github.com/echasnovski/mini.test"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red1, bold = true },
    MiniTestPass = { fg = c.green1, bold = true },
  }
end

return M
