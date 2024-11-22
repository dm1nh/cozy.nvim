local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_gutter, nocombine = true },
    IndentLineCurrent          = { fg = c.accent, nocombine = true },
  }
end

return M
