local status, _ = pcall(vim.cmd, "colorscheme kanagawa")

if not status then
	print("Color scheme not found")
	return
end
