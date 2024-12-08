-- NOTE define global 'vim'
-- keys.lua: Person keymaps, leader key is '\' by default

-- Jumping between windows replacement for Ctrl-w[hjkl]
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- Cut & Paste to system buffer if clipboard is set
vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>y", '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+yy', { noremap = true, silent = true })

-- :only
vim.api.nvim_set_keymap("n", "<Leader>0", ":only<CR>",
  { desc = "Close all buffers except current focus", noremap = true, silent = true })

-- Git
vim.api.nvim_set_keymap('n', '<leader>Gp', ':lua push_current_branch()<cr>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>gf", ":FugitiveInside<CR>", { noremap = true })
vim.api.nvim_set_keymap(
  "n",
  "<Leader>gls",
  ':G log --pretty=format:"%h - %an, %ar : %s"<CR> ', { desc = "Short formatted git log", noremap = true })

-- Clean up code
vim.api.nvim_set_keymap("n", "<Leader>ec", "Extract_selected_code_blocks()<CR>", { noremap = true })

-- Toggle Line Numbers
vim.api.nvim_set_keymap("n", "<Leader>nn", ":lua ToggleLineNumbers()<CR>", { noremap = true })

-- Clear current search
vim.api.nvim_set_keymap("n", "<Leader>z", ":nohlsearch<CR>", { desc = "Clear current search", noremap = true })

-- Refresh the nvim configuration after modification
vim.api.nvim_set_keymap("n", "<Leader>sf", "<cmd>source %<CR>",
  { desc = "Reloads the configuration after a change", noremap = true }
)

-- <F> Keys
-- resize current focused vertical panel by 5 chars
vim.api.nvim_set_keymap("n", "<F3>", ":vertical resize -5<CR>",
  { desc = "Descrease current window size by 5 chars", noremap = true }
)
vim.api.nvim_set_keymap("n", "<F4>", ":vertical resize +5<CR>",
  { desc = "Increase current window size by 5 chars", noremap = true }
)

-- Spelling
-- F5 will find next word in doc,
vim.api.nvim_set_keymap("n", "<F5>", "]s", { desc = "Spell check txt/md files", noremap = true })

-- F6 will prompt to select from a dictionary
vim.api.nvim_set_keymap("n", "<F6>", "z=", { desc = "Open Dictionary options for word under cursor", noremap = true })

-- F7 will add word to local dictionary
vim.api.nvim_set_keymap("n", "<F7>", "zg", { desc = "Save a word to a local dictionary", noremap = true })

-- Mapping for windo diffs
vim.api.nvim_set_keymap("n", "<leader>wd", ":windo diffthis<CR>",
  { desc = "Diff compare open split buffers", noremap = true })
vim.api.nvim_set_keymap("n", "<leader>wD", ":windo diffoff<CR>", { desc = "Diff compare off", noremap = true })


-- Add a mapping to open plugin help
vim.api.nvim_set_keymap("n", "<Leader>ph", [[:lua OpenPluginHelp()<CR>]], { silent = true })

-- Tabs
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabprevious<CR>", { desc = "Select Previous Tab", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabNext<CR>", { desc = "Select Next Tab", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tN", ":tabnew<CR>", { desc = "Open New Tab", noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Current Tab", noremap = true, silent = true })
