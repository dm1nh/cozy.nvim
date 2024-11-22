local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.syn.comment },
    GrugFarHelpHeaderKey          = { fg = c.cyan1 },
    GrugFarInputLabel             = { fg = c.blue1 },
    GrugFarInputPlaceholder       = { fg = c.dark3 },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.orange1 },
    GrugFarResultsLineColumn      = { fg = c.dark3 },
    GrugFarResultsLineNo          = { fg = c.dark3 },
    GrugFarResultsMatch           = { fg = c.bg, bg = c.red1 },
    GrugFarResultsStats           = { fg = c.blue1 },
  }
end

return M
