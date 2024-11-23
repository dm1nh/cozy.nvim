local config = require("cozy.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? cozy.Config
function M.load(opts)
  opts = require("cozy.config").extend(opts)
  vim.o.background = "dark"
  return require("cozy.theme").setup(opts)
end

M.setup = config.setup

return M
