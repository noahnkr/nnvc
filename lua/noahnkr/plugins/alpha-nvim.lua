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
			"          o                ___",
			"        O   ___======____=---=)",
			"           /T             \\_--===)",
			"           [ \\ (0)   \\~     \\_-==)      " .. os.date(),
			"            \\      / )J~~     \\-=)       ",
			"             \\\\___/  )JJ~~     \\)       ",
			"              \\_____/JJJ~~~~     \\",
			"              / \\  , \\J~~~~~      \\",
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
			dashboard.button("; rr", "󰈢  > Recent files", ":Oldfiles<CR>"),
			dashboard.button("; ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("; ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("; cc", "  > Edit Config", ":e ~/AppData/Local/nvim/<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
