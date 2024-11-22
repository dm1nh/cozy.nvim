local M = {}

M.url = "https://github.com/echasnovski/mini.surround"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.orange1, fg = c.bg },
  }
end

return M
