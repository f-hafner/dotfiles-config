function ColorMyPencils(color)
	-- global fct. can call with `: lua ColorMyPencils()` 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()


