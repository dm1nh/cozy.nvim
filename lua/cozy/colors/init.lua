local Util = require("cozy.util")

local M = {}

---@type table<string, Palette|fun(opts:cozy.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("cozy.colors." .. style))
  end,
})

---@param opts? cozy.Config
function M.setup(opts)
  opts = require("cozy.config").extend(opts)

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  colors.none = "NONE"
  colors.accent = colors[opts.accent]
  colors.fg = colors.white1
  colors.bg = colors.dark1
  colors.fg_dark = colors.white0
  colors.bg_dark = colors.dark0
  colors.fg_border = colors.dark3
  colors.fg_border_highlight = colors.accent
  colors.bg_highlight = colors.dark2
  colors.bg_visual = colors.dark4
  colors.bg_search = colors.accent
  colors.bg_statusline = colors.dark
  colors.fg_gutter = colors.dark4
  colors.bg_sidebar = opts.styles.sidebars == "dark" and colors.dark0 or colors.none

  colors.float = {
    fg = colors.white1,
    bg = opts.styles.floats == "dark" and colors.dark0 or colors.none,
    fg_border = colors.dark3,
  }
  colors.pmenu = {
    fg = colors.white0,
    bg = colors.dark3,
    fg_sel = colors.none,
    bg_sel = colors.dark4,
    bg_sbar = colors.dark4,
    bg_thumb = colors.accent,
  }

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.diag = {
    error = colors.red1,
    warning = colors.yellow1,
    info = colors.blue1,
    hint = colors.green1,
  }

  colors.diff = {
    add = colors.green,
    delete = colors.red,
    change = colors.orange,
    text = colors.purple,
  }

  colors.git = {
    add = colors.green2,
    delete = colors.red2,
    change = colors.orange2,
  }

  colors.syn = {
    comment = colors.grey1,
    constant = colors.orange1,
    deprecated = colors.grey2,
    field = colors.matcha1,
    func = colors.blue1,
    identifier = colors.yellow1,
    keyword = colors.purple1,
    number = colors.orange2,
    operator = colors.purple2,
    param = colors.red1,
    punct = colors.accent,
    preproc = colors.red1,
    regex = colors.blue1,
    special1 = colors.matcha1,
    special2 = colors.red1,
    special3 = colors.cyan1,
    statement = colors.purple1,
    string = colors.green1,
    type = colors.yellow2,
    variable = colors.white1,
  }

  colors.rainbow = { colors.blue1, colors.yellow1, colors.green1, colors.matcha1, colors.magenta1, colors.purple1 }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.grey1,
    black_bright   = colors.grey2,
    red            = colors.red1,
    red_bright     = colors.red2,
    green          = colors.green1,
    green_bright   = colors.green2,
    yellow         = colors.yellow1,
    yellow_bright  = colors.yellow2,
    blue           = colors.blue1,
    blue_bright    = colors.blue2,
    magenta        = colors.purple1,
    magenta_bright = colors.purple2,
    cyan           = colors.cyan1,
    cyan_bright    = colors.cyan2,
    white          = colors.fg_dark,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
