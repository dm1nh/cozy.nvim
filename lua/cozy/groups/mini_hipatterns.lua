local M = {}

M.url = "https://github.com/echasnovski/mini.hipatterns"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniHipatternsFixme = { fg = c.bg, bg = c.diag.error, bold = true },
    MiniHipatternsHack  = { fg = c.bg, bg = c.diag.warning, bold = true },
    MiniHipatternsNote  = { fg = c.bg, bg = c.diag.hint, bold = true },
    MiniHipatternsTodo  = { fg = c.bg, bg = c.diag.info, bold = true },
  }
end

return M
