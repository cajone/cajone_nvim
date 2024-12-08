-- Set syntax highlighting for Jenkins files with no extension
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "JenkinsFile", "*jenkinsfile", "Jenkinfile*" },
  command = "set filetype=groovy",
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.json",
  command = "set filetype=json",
})

-- Define custom filetypes
vim.filetype.add({
  extension = {
    yml = "yaml.ansible",
  },
})

-- Load the colorscheme
vim.cmd("colorscheme tokyonight")

-- Change the LCD path for Vimwiki
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.wiki",
  command = "lcd ~/vimwiki",
})

-- Open Terminal and set keymaps
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    vim.cmd("lua Set_terminal_keymaps()")
  end,
})


-- Enable spell checking for specific filetypes
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.txt", "*.md" },
  command = "setlocal spell",
})

-- Fugitive command to change the directory and open git status
vim.api.nvim_create_user_command("FugitiveInside", function()
  vim.cmd("lcd %:h")
  vim.cmd("G")
end, {})
