local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    VimwikiLink = { fg = c.blue1, bg = c.none },
    VimwikiHeaderChar = { fg = c.yellow1, bg = c.none },
    VimwikiHR = { fg = c.yellow1, bg = c.none },
    VimwikiList = { fg = c.orange1, bg = c.none },
    VimwikiTag = { fg = c.green1, bg = c.none },
    VimwikiMarkers = { fg = c.blue1, bg = c.none },
  }
  for i, color in ipairs(c.rainbow) do
    ret["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
  end
  return ret
end

return M
