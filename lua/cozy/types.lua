---@class cozy.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias cozy.Highlights table<string,cozy.Highlight|string>

---@alias cozy.HighlightsFn fun(colors: ColorScheme, opts:cozy.Config):cozy.Highlights

---@class cozy.Cache
---@field groups cozy.Highlights
---@field inputs table
