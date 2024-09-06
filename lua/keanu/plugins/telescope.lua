return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local map = vim.keymap -- for conciseness

		-- files
		map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" })
		map.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "find recent files" })

		--strings
		map.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string" })
		map.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "find string under cursor" })
	end,
}
