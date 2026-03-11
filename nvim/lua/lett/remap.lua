vim.g.mapleader = "\\"

-- Maps Ctrl+Up to PageUp in Normal, Visual, and Insert modes
vim.keymap.set({'n', 'v', 'i'}, '<C-Up>', '<PageUp>', { noremap = true, silent = true, desc = 'Page Up' })

-- Maps Ctrl+Down to PageDown in Normal, Visual, and Insert modes
vim.keymap.set({'n', 'v', 'i'}, '<C-Down>', '<PageDown>', { noremap = true, silent = true, desc = 'Page Down' })

-- Oil
vim.keymap.set("n", "<leader>o", function()
  print(vim.o.filetype)
  if vim.o.filetype == 'oil' then
	  vim.cmd("close")
  else
	  vim.cmd("vsplit | wincmd h | vertical resize 40")
	  require("oil").open()
  end
end, { desc = 'Toggle Oil' })
