local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- find any files (in project?) he called in project search
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- find all files in git repo (?)
vim.keymap.set('n', '<leader>ps', function() -- project search
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end) 
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
