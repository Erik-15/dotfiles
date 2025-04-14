vim.diagnostic.config({
  virtual_text = true,  -- ← Must be true
  signs = true,
  underline = true,
  update_in_insert = false,  -- Disable in insert mode
  severity_sort = true,
})

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
-- https://github.com/neovim/nvim-lspconfig/wiki/UI-Customization#show-line-diagnostics-automatically-in-hover-window
vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold" }, {
	group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
	callback = function ()
		vim.diagnostic.open_float(nil, {focus=false})
	end
})
