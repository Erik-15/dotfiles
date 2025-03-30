vim.diagnostic.config({
  virtual_text = true,  -- ← Must be true
  signs = true,
  underline = true,
  update_in_insert = false,  -- Disable in insert mode
  severity_sort = true,
})
