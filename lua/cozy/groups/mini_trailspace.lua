local M = {}

M.url = "https://github.com/echasnovski/mini.trailspace"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTrailspace = { bg = c.red1 },
  }
end

return M
