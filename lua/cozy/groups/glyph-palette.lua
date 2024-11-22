local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red1 },
    GlyphPalette2 = { fg = c.green1 },
    GlyphPalette3 = { fg = c.yellow1 },
    GlyphPalette4 = { fg = c.blue1 },
    GlyphPalette6 = { fg = c.green1 },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red1 },
  }
end

return M
