return({
  "jiaoshijie/undotree",
  opts = {
    -- your options
  },
  keys = { -- load the plugin only when using it's keybinding:
    { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
  },

  config = function()
	  vim.keymap.set('n', '<leader>u', require('undotree').toggle, { desc = 'Open Undotree', noremap = true, silent = true })
  end
})
