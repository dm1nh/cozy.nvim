local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.blue1, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.orange1, bold = true },
    OctoIssueTitle            = { fg = c.purple1, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.magenta1, 0.1), fg = c.magenta1 },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.blue1 },

  }
end

return M
