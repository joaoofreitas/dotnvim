 local line_ok, feline = pcall(require, "feline")
 if not line_ok then
 	return
 end


local ctp_feline = require('catppuccin.groups.integrations.feline')
 feline.setup({
 	components = ctp_feline.get(),
 })
