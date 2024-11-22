local M = {}

M.url = "https://github.com/echasnovski/mini.starter"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.purple1, italic = true },
    MiniStarterHeader     = { fg = c.accent },
    MiniStarterInactive   = { fg = c.syn.comment, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.fg_border_highlight },
    MiniStarterItemPrefix = { fg = c.diag.warning },
    MiniStarterQuery      = { fg = c.diag.info },
    MiniStarterSection    = { fg = c.blue1 },
  }
end

return M
