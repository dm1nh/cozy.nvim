local M = {}

M.url = "https://github.com/petertriho/nvim-scrollbar"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    ScrollbarError        = { fg = c.diag.error, bg = c.none },
    ScrollbarErrorHandle  = { fg = c.diag.error, bg = c.bg_highlight },
    ScrollbarHandle       = { fg = c.none, bg = c.bg_highlight },
    ScrollbarHint         = { fg = c.diag.hint, bg = c.none },
    ScrollbarHintHandle   = { fg = c.diag.hint, bg = c.bg_highlight },
    ScrollbarInfo         = { fg = c.diag.info, bg = c.none },
    ScrollbarInfoHandle   = { fg = c.diag.info, bg = c.bg_highlight },
    ScrollbarMisc         = { fg = c.purple1, bg = c.none },
    ScrollbarMiscHandle   = { fg = c.purple1, bg = c.bg_highlight },
    ScrollbarSearch       = { fg = c.orange1, bg = c.none },
    ScrollbarSearchHandle = { fg = c.orange1, bg = c.bg_highlight },
    ScrollbarWarn         = { fg = c.diag.warning, bg = c.none },
    ScrollbarWarnHandle   = { fg = c.diag.warning, bg = c.bg_highlight },

  }
end

return M
