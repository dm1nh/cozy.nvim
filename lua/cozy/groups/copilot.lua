local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.grey0 },
    CopilotSuggestion = { fg = c.grey0 },
  }
  return ret
end

return M
