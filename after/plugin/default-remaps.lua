---------------
-- VIM commands
---------------

-- Control+W followed by W to toggle between open windows and, (+ j, k, h, l)
-- <C-t> -> back from go to definition
-- ^ -> go to first non blank character
-- s -> deletes character under cursor and puts me into insert mode
-- *:%s//new_word -> hover over word and replace all occurences with new string without typing variable again
-- cga -> deletes current word and goes into insert mode, rename word and then press . in normal mode to automatically apply to next wor, skip word with n
-- :e %:h open directory view in current file directory
-- :e %:h/filename create filename file in current directory
-- :e. open directory view
-- gt and gT cicle through neovim tabs
-- number-gt jump to tab position
-- :cd dir -> set working directory so that files are found
-- :%!jq -> aktuellen buffer mit jq formatieren

---------
-- Macros
---------
-- qa -> record macro in register a
-- q  -> stop recording
-- @a -> apply macro in register a
-- @@ -> apply last applied macro

---------------
-- Line numbers
---------------

vim.opt.relativenumber = true
vim.opt.number = true

---------------------
-- Insert mode remaps
---------------------

vim.keymap.set('i', 'kj', '<esc>')

-- ------------------
-- Command mode remaps
-- ------------------

vim.keymap.set('c', 'kj', '<esc>')
vim.keymap.set('c', 'kj', '<esc>')

-- ------------------------
-- Prevent Signcolumn shift
-- ------------------------

vim.o.signcolumn = "yes"

-- ------------------------
-- Yank to system clipboard
-- ------------------------
vim.opt.clipboard = "unnamedplus"

-- -----------
-- Tab indents
-- -----------
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
