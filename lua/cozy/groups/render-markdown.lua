local Util = require("cozy.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet    = {fg = c.orange1}, -- horizontal rule
    RenderMarkdownCode      = { bg = c.bg_dark },
    RenderMarkdownDash      = {fg = c.orange1}, -- horizontal rule
    RenderMarkdownTableHead = { fg = c.red1},
    RenderMarkdownTableRow  = { fg = c.orange1},
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }
  for i, color in ipairs(c.rainbow) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  return ret
end

return M
