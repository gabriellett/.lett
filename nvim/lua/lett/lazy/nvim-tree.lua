local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")
	api.map.on_attach.default(bufnr)

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

  vim.keymap.set("n", "i",          api.node.open.horizontal,           opts("Open: Horizontal Split"))
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		require("nvim-tree").setup({
			on_attach = my_on_attach,
			disable_netrw = true,
			renderer = {
				full_name = true,
			},
		})

    --		vim.keymap.set("n", "-", [[<CMD>NvimTreeToggle<CR>]])
    vim.keymap.set('n', '<leader>p', ':NvimTreeToggle<CR>')
    vim.keymap.set('n', '<leader>l', function()
      -- open the tree, find the file but don't focus it
			require("nvim-tree.api").tree.find_file({
				open = true,
				update_root = true,
				focus = true,
			})
    end)
	end,
}
