local M = {}

M.url = "https://github.com/echasnovski/mini.pick"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniPickBorder        = "FloatBorder",
    MiniPickBorderBusy    = "DiagnosticFloatingWarn",
    MiniPickBorderText    = { fg = c.diag.hint, bg = c.float.bg },
    MiniPickIconDirectory = "Directory",
    MiniPickIconFile      = "MiniPickNormal",
    MiniPickHeader        = "DiagnosticFloatingHint",
    MiniPickMatchCurrent  = "CursorLine",
    MiniPickMatchMarked   = "Visual",
    MiniPickMatchRanges   = "DiagnosticFloatingHint",
    MiniPickNormal        = "NormalFloat",
    MiniPickPreviewLine   = "CursorLine",
    MiniPickPreviewRegion = "IncSearch",
    MiniPickPrompt        = { fg = c.diag.info, bg = c.float.bg },
  }
end

return M
