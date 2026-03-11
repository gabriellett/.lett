vim.api.nvim_create_autocmd("InsertEnter", { command = [[set relativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", { command = [[set norelativenumber]] })
