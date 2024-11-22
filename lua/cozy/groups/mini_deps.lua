local M = {}

M.url = "https://github.com/echasnovski/mini.deps"

---@type cozy.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniDepsChangeAdded   = "diffAdded",
    MiniDepsChangeRemoved = "diffRemoved",
    MiniDepsHint          = "DiagnosticHint",
    MiniDepsInfo          = "DiagnosticInfo",
    MiniDepsMsgBreaking   = "DiagnosticWarn",
    MiniDepsPlaceholder   = "Comment",
    MiniDepsTitle         = "Title",
    MiniDepsTitleError    = { fg = c.bg, bg = c.git.delete },
    MiniDepsTitleSame     = "Comment",
    MiniDepsTitleUpdate   = { fg = c.bg, bg = c.git.add },
  }
end

return M
