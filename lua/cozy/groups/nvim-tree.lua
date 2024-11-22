local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.accent },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },
    NvimTreeImageFile    = { fg = c.fg },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal       = { fg = c.fg, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.fg, bg = c.bg_sidebar },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeRootFolder   = { fg = c.accent, bold = true },
    NvimTreeSpecialFile  = { fg = c.purple, underline = true },
    NvimTreeSymlink      = { fg = c.blue1 },
    NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.fg_border or c.bg_sidebar, bg = c.bg_sidebar },
  }
end

return M
