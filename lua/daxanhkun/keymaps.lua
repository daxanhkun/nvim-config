vim.g.mapleader = ' '

local keymap =  vim.keymap -- for conciseness

-- general keymaps
keymap.set('n', 'x', '"_x')



-- leader keymaps
keymap.set('n', '<leader>dl', '0v$')
keymap.set('n', '<leader>dd', 'bve')
keymap.set('n', '<leader>dy', 'ysiw')

-- window management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>dr", "odebugger<ESC>") --  go to previous tab
keymap.set("n", "<leader>dp", "oimport pdb<CR>pdb.set_trace()<ESC>") --  go to previous tab
keymap.set("n", "Z", ":tab split<CR>") -- zoom in
keymap.set("n", "zz", ":tabclose<CR>") -- zoom out
