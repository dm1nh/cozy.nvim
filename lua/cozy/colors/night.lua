local ret = vim.deepcopy(require("cozy.colors.moon"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  -- dark
  dark = "#121617",
  dark0 = "#1c2225",
  dark1 = "#202729",
  dark2 = "#232b2e",
  dark3 = "#363d3e",
  dark4 = "#4d5254",
  dark5 = "#636869",
})
