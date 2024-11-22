local Util = require("cozy.util")

local M = {}

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = "PreProc",
    ["@attribute"]                  = { fg = c.syn.field },
    ["@boolean"]                    = "Boolean",
    ["@character"]                  = "Character",
    ["@character.printf"]           = "SpecialChar",
    ["@character.special"]          = "SpecialChar",
    ["@comment"]                    = "Comment",
    ["@comment.error"]              = { fg = c.diag.error },
    ["@comment.hint"]               = { fg = c.diag.hint },
    ["@comment.info"]               = { fg = c.diag.info },
    ["@comment.note"]               = { fg = c.diag.hint },
    ["@comment.todo"]               = { fg = c.yellow1 },
    ["@comment.warning"]            = { fg = c.diag.warning },
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = "Special",
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.magenta1 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@constructor.tsx"]            = { fg = c.blue1 },
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@function"]                   = "Function",
    ["@function.builtin"]           = "Special",
    ["@function.call"]              = "@function",
    ["@function.macro"]             = "Macro",
    ["@function.method"]            = "Function",
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.syn.keyword, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"]        = "Conditional",
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = "Exception",
    ["@keyword.function"]           = { fg = c.syn.keyword, style = opts.styles.functions }, -- For keywords used to define a function.
    ["@keyword.import"]             = "Include",
    ["@keyword.operator"]           = "@operator",
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
    ["@label"]                      = { fg = c.blue1 }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = "@none",
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.matcha1 },
    ["@markup.link.label"]          = "SpecialChar",
    ["@markup.link.label.symbol"]   = "Identifier",
    ["@markup.link.url"]            = "Underlined",
    ["@markup.list"]                = { fg = c.blue2 }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg = c.orange1, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.cyan1 }, -- For brackets and parens.
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = "String",
    ["@markup.raw.markdown_inline"] = { bg = c.grey0, fg = c.blue },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = "Include",
    ["@module.builtin"]             = { fg = c.red1 }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = { fg = c.syn.operator }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"]                   = { fg = c.green1 },
    ["@punctuation.bracket"]        = { fg = c.fg_dark }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.syn.punct }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.syn.special1 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.orange1 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.yellow1 },
    ["@string.escape"]              = { fg = c.orange1 }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg = c.syn.regex }, -- For regexes.
    ["@tag"]                        = "Label",
    ["@tag.attribute"]              = "@property",
    ["@tag.delimiter"]              = "Delimiter",
    ["@tag.delimiter.tsx"]          = { fg = Util.blend_bg(c.blue1, 0.7) },
    ["@tag.tsx"]                    = { fg = c.red1 },
    ["@tag.javascript"]             = { fg = c.red1 },
    ["@type"]                       = "Type",
    ["@type.builtin"]               = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@type.definition"]            = "Typedef",
    ["@type.qualifier"]             = "@keyword",
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.red1 }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg = c.green1 }, -- For fields.
    ["@variable.parameter"]         = { fg = c.yellow1 }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.yellow1, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
  }

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
  end
  return ret
end

return M
