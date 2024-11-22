local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.grey0 },
  }
  return ret
end

return M
