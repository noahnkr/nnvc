return {
	"lervag/vimtex",
	config = function()
		vim.g.vimtex_view_general_viewer = "SumatraPDF"
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_compiler_latexmk = {
			["continuous"] = 1,
			["callback"] = 1,
			["build_dir"] = "",
			["view"] = 1,
			["options"] = {
				"-verbose",
				"-file-line-error",
				"-synctex=1",
				"-interaction=nonstopmode",
			},
		}
	end,
}
