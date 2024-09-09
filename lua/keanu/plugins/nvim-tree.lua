return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local map = vim.keymap -- for conciseness

		map.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" }) -- toggle file explorer
		map.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "toggle file explorer on current file" }) -- toggle file explorer on current file
		map.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "collapse file explorer" }) -- collapse file explorer
		map.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" }) -- refresh file explorer
		map.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "focus on file explorer window" }) -- focus on file explorer window
	end,
}
