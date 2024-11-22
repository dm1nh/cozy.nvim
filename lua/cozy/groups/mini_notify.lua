local M = {}

M.url = "https://github.com/echasnovski/mini.notify"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniNotifyBorder = "FloatBorder",
    MiniNotifyNormal = "NormalFloat",
    MiniNotifyTitle = "FloatTitle",
  }
end

return M
