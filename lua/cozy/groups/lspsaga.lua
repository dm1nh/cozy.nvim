local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.purple1 },
    DefinitionIcon             = { fg = c.blue1 },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { fg = c.fg_border_highlight },
    LspFloatWinNormal          = { bg = c.float.bg },
    LspSagaBorderTitle         = { fg = c.cyan1 },
    LspSagaCodeActionBorder    = { fg = c.blue1 },
    LspSagaCodeActionContent   = { fg = c.purple1 },
    LspSagaCodeActionTitle     = { fg = c.blue1 },
    LspSagaDefPreviewBorder    = { fg = c.green1 },
    LspSagaFinderSelection     = { fg = c.bg_visual },
    LspSagaHoverBorder         = { fg = c.blue1 },
    LspSagaRenameBorder        = { fg = c.green1 },
    LspSagaSignatureHelpBorder = { fg = c.red1 },
    ReferencesCount            = { fg = c.purple1 },
    ReferencesIcon             = { fg = c.blue1 },
    TargetWord                 = { fg = c.cyan1 },
  }
end

return M
