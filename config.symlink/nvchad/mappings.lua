require "nvchad.mappings"

---@type MappingsTable
local M = {}

-- n, v, i, t = mode names

local daily_note = os.date("~/garden/content/journal/%Y-%m-%d.md")
local function open_daily_note()
	vim.cmd(string.format("edit %s", daily_note))
end

local function open_daily_note_float()
	local file_path = os.date("~/garden/content/journal/%Y-%m-%d.md")

	-- Create a new empty buffer
	local buf = vim.api.nvim_create_buf(false, true)

	-- Set up the window dimensions and open a new floating window
	local width = vim.api.nvim_get_option("columns")
	local height = vim.api.nvim_get_option("lines")

	local win_height = math.ceil(height * 0.8 - 4)
	local win_width = math.ceil(width * 0.8)

	local row = math.ceil((height - win_height) / 2 - 1)
	local col = math.ceil((width - win_width) / 2)

	local border_opts = {
		style = "minimal",
		relative = "editor",
		width = win_width,
		height = win_height,
		row = row,
		col = col,
	}

	-- Create the floating window with the buffer attached
	local win = vim.api.nvim_open_win(buf, true, border_opts)

	-- Switch to the new buffer and open the file
	vim.api.nvim_win_set_buf(win, buf)
	-- vim.api.nvim_buf_set_name(buf, file_path)
	vim.cmd("edit " .. file_path)

	-- Define keys that will close the window
	local closing_keys = { "<esc><esc><esc>", "qq"}

	-- Map these keys to close the window in the new buffer
	for _, key in ipairs(closing_keys) do
		vim.api.nvim_buf_set_keymap(buf, "n", key, ":close<CR>", { noremap = true, silent = true, nowait = true })
	end
end

M.general = {

	n = {
    ["<leader>to"] = {
			function()
				require("base46").toggle_transparency()
			end,
			"Toggle comment",
		},
		-- save
		["<leader>bs"] = { "<cmd> w <CR>", "Save file" },
		-- open daily note
		["<leader>ww"] = { open_daily_note_float, "Open daily note" },
	},
}

M.ranger = {

	n = {
		["<leader>rr"] = { "<cmd> Ranger<CR>", "Open Ranger" },
	},
}

M.comment = {
	plugin = false,

	-- toggle comment in both modes
	n = {
		["gcc"] = {
			function()
				require("Comment.api").toggle.linewise.current()
			end,
			"Toggle comment",
		},
	},

	v = {
		["gcc"] = {
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
			"Toggle comment",
		},
	},
}

M.lspconfig = {

	-- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
	n = {

		-- ["<leader>cc"] = { "<cmd> lua vim.lsp.buf.code_action()<CR>", "Show Code Actions" },

		["<leader>bf"] = {
			function()
				vim.lsp.buf.format({ async = true })
			end,
			"LSP formatting",
		},

		["[e"] = {
			function()
				vim.diagnostic.goto_prev({ float = { border = "rounded" } })
			end,
			"Goto prev",
		},

		["]e"] = {
			function()
				vim.diagnostic.goto_next({ float = { border = "rounded" } })
			end,
			"Goto next",
		},
	},
}

M.telescope = {
	plugin = true,

	n = {
		-- find
		["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
		["<leader>sp"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
	},
}

return M
