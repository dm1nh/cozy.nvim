local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.grey0 },
  }
  return ret
end

return M
