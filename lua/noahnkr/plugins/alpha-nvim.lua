return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"         o",
			"      O o",
			"          o                __",
			"        O   ___======____=---=)",
			"           /T             \\_--===)",
			"           [ \\ (0)   \\~     \\_-==)      " .. os.date(),
			"            \\      / )J~~     \\-=)       ",
			"             \\\\___/  )JJ~~     \\)       ",
			"              \\_____/JJJ~~~~     \\",
			"              / \\  , \\\\J~~~~~     \\",
			"             (-\\)\\=|\\\\\\~~~~        L__",
			"             (\\\\)  (\\\\\\)_            \\==__",
			"              \\V    \\\\\\) ===_____    \\\\\\\\\\\\",
			"                     \\V)     \\_) \\\\\\\\JJ\\J\\)",
			"                                 /J\\JT\\JJJJ)",
			"                                 (JJJ| \\UUU)",
			"                                  (UU)",
		}

		dashboard.section.buttons.val = {
			dashboard.button("; ee", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("; ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("; ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
