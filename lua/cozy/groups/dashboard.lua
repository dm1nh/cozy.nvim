local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.accent },
    DashboardFooter           = { fg = c.purple1 },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.cyan1 },
    DashboardProjectTitleIcon = { fg = c.orange1 },
    DashboardProjectIcon      = { fg = c.yellow1 },
    DashboardMruTitle         = { fg = c.cyan1 },
    DashboardMruIcon          = { fg = c.purple1 },
    DashboardFiles            = { fg = c.blue1 },
    DashboardShortCutIcon     = { fg = c.magenta1 },
    -- Doome theme
    DashboardDesc             = { fg = c.cyan1 },
    DashboardKey              = { fg = c.orange1 },
    DashboardIcon             = { fg = c.cyan1 },
    DashboardShortCut         = { fg = c.cyan1 },
  }
end

return M
