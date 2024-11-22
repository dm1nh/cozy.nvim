local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.fg_border_highlight, bg = c.float.bg },
    TelescopeNormal         = { fg = c.fg, bg = c.float.bg },
    TelescopePromptBorder   = { fg = c.orange1, bg = c.float.bg },
    TelescopePromptTitle    = { fg = c.orange1, bg = c.float.bg },
    TelescopeResultsComment = { fg = c.grey },
  }
end

return M
