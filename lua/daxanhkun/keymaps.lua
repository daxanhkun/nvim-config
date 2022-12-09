vim.g.mapleader = ' '

local keymap =  vim.keymap -- for conciseness

-- general keymaps
keymap.set('n', 'x', '"_x')



-- leader keymaps
keymap.set('n', '<leader>l', '0v$')
keymap.set('n', '<leader>d', 'bve')

-- window management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>dr", "odebugger<ESC>") --  go to previous tab
keymap.set("n", "<leader>dp", "oimport pdb<CR>pdb.set_trace()<ESC>") --  go to previous tab
