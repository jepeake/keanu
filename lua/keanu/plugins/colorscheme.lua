return {
	"slugbyte/lackluster.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		local lackluster = require("lackluster")
		local color = lackluster.color -- blue, green, red, orange, black, lack, luster, gray1-9
		lackluster.setup({
			tweak_color = {
				lack = "default",
				luster = "default",
				orange = "default",
				yellow = "default",
				green = "default",
				blue = "default",
				red = "default",
				-- black = "default",
				-- gray1 = "default",
				-- gray2 = "default",
				-- gray3 = "default",
				-- gray4 = "default",
				-- gray5 = "default",
				-- gray6 = "default",
				-- gray7 = "default",
				-- gray8 = "default",
				-- gray9 = "default",
			},
			tweak_background = {
				normal = color.black,
			},
		})
		vim.cmd.colorscheme("lackluster-hack")
	end,
}
