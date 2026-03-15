return {
	'lewis6991/gitsigns.nvim',
	version = '*',
	config = function()
		require('gitsigns').setup{
			current_line_blame = true,
			on_attach = function(bufnr)
				local gitsigns = require('gitsigns')

				local function map(mode, l, r, desc)
					local opts = {}
					opts.desc = desc
					opts.buffer = bufnr
					vim.keymap.set(mode, l, r, opts)
				end

				-- Navigation
				map('n', ']c', function()
					if vim.wo.diff then
						vim.cmd.normal({']c', bang = true})
					else
						gitsigns.nav_hunk('next')
					end
				end)

				map('n', '[c', function()
					if vim.wo.diff then
						vim.cmd.normal({'[c', bang = true})
					else
						gitsigns.nav_hunk('prev')
					end
				end)

				-- Actions
				map('n', '<leader>hs', gitsigns.stage_hunk, 'Stage Hunk')
				map('n', '<leader>hr', gitsigns.reset_hunk, 'Reset Hunk')

				map('v', '<leader>hs', function()
					gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
				end, 'Stage Hunk')

				map('v', '<leader>hr', function()
					gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
				end, 'Reset Hunk')

				map('n', '<leader>hS', gitsigns.stage_buffer, 'Stage Buffer')
				map('n', '<leader>hR', gitsigns.reset_buffer, 'Reset Buffer')
				map('n', '<leader>hp', gitsigns.preview_hunk, 'Preview Hunk')
				map('n', '<leader>hi', gitsigns.preview_hunk_inline, 'Preview Hunk (inline)')

				map('n', '<leader>hb', function()
					gitsigns.blame_line({ full = true })
				end, 'Blame Line')

				map('n', '<leader>hd', gitsigns.diffthis, 'Diff')

				map('n', '<leader>hD', function()
					gitsigns.diffthis('~')
				end, 'DIFF')

				map('n', '<leader>hQ', function() gitsigns.setqflist('all') end, 'Set all quickfix list')
				map('n', '<leader>hq', gitsigns.setqflist, 'Set local quickfix list')

				-- Toggles
				map('n', '<leader>tb', gitsigns.toggle_current_line_blame, 'Toggle line blame')
				map('n', '<leader>tw', gitsigns.toggle_word_diff, 'Toggle word diff')

				-- Text object
				map({'o', 'x'}, 'ih', gitsigns.select_hunk, 'Select hunk')
			end
		}
	end
}

