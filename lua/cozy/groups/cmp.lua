local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.float.bg },
    CmpDocumentationBorder = { fg = c.fg_border_highlight, bg = c.float.bg },
    CmpGhostText           = { fg = c.grey0 },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.blue1, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.blue1, bg = c.none },
    CmpItemKindCodeium     = { fg = c.matcha1, bg = c.none },
    CmpItemKindCopilot     = { fg = c.matcha1, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.matcha1, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg_dark, bg = c.none },
    CmpItemKindTabNine     = { fg = c.matcha1, bg = c.none },
    CmpItemMenu            = { fg = c.syn.comment, bg = c.none },
  }

  require("cozy.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
