local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.yellow1 },
    NoiceCmdlineIconLua            = { fg = c.blue1 },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow1 },
    NoiceCmdlinePopupBorderLua     = { fg = c.blue1 },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow1 },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue1 },
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }
  require("cozy.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
