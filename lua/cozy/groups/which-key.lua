local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan1 },
    WhichKeyGroup     = { fg = c.blue1 },
    WhichKeyDesc      = { fg = c.accent },
    WhichKeySeparator = { fg = c.dark5 },
    WhichKeyNormal     = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.syn.comment },
  }
end

return M
