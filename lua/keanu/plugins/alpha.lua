return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- set header
		dashboard.section.header.val = {
			"          ..                                                           ",
			"    < .z@8``                                                           ",
			"     !@88E                                  u.    u.      x.    .      ",
			"     '888E   u         .u          u      x@88k u@88c.  .@88k  z88u    ",
			"      888E u@8NL    ud8888.     us888u.  ^`8888``8888` ~`8888 ^8888    ",
			"      888E``88*`  :888'8888. .@88 `8888`   8888  888R    8888  888R    ",
			"      888E .dN.   d888 '88%` 9888  9888    8888  888R    8888  888R    ",
			"      888E~8888   8888.+`    9888  9888    8888  888R    8888  888R    ",
			"      888E '888&  8888L      9888  9888    8888  888R    8888 ,888B .  ",
			"      888E  9888. '8888c. .+ 9888  9888   `*88*` 8888`  `8888Y 8888`   ",
			"    '`888* ` 4888`  `88888%   `888*``888`   ``   'Y`     `Y`   'YP    ",
			"       ``     ``      `YP'     ^Y`   ^Y'                               ",
		}

		-- set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
