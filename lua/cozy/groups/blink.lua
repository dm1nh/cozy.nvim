local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc             = { fg = c.fg, bg               = c.float.bg },
    BlinkCmpDocBorder       = { fg = c.fg_border_highlight, bg = c.float.bg },
    BlinkCmpGhostText       = { fg = c.grey0 },
    BlinkCmpKindCodeium     = { fg = c.matcha1, bg             = c.none },
    BlinkCmpKindCopilot     = { fg = c.matcha1, bg             = c.none },
    BlinkCmpKindDefault     = { fg = c.fg_dark, bg          = c.none },
    BlinkCmpKindSupermaven  = { fg = c.matcha1, bg             = c.none },
    BlinkCmpKindTabNine     = { fg = c.matcha1, bg             = c.none },
    BlinkCmpLabel           = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated = { fg = c.fg_gutter, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch      = { fg = c.blue1, bg            = c.none },
  }

  require("cozy.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
