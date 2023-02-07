vim.api.nvim_command("hi ExtraWhitespace ctermbg=red guibg=red")
vim.api.nvim_command("match ExtraWhitespace /\\s\\+$/")
vim.api.nvim_command("autocmd BufWinEnter * match ExtraWhitespace /\\s\\+$/")
vim.api.nvim_command("autocmd InsertEnter * match ExtraWhitespace /\\s\\+\\%#\\@<!$/")
vim.api.nvim_command("autocmd InsertLeave * match ExtraWhitespace /\\s\\+$/")
vim.api.nvim_command("autocmd BufWinLeave * call clearmatches()")

function ShowSpaces(...)
  local oldhlsearch = vim.api.nvim_get_var("hlsearch")
  if not ... then
    vim.api.nvim_set_var("hlsearch", not vim.api.nvim_get_var("hlsearch"))
  else
    vim.api.nvim_set_var("hlsearch", ...)
  end
  return oldhlsearch
end

function TrimSpaces(firstline, lastline)
  local oldhlsearch = ShowSpaces(true)
  vim.api.nvim_command("execute "..firstline..","..lastline.." substitute ///gec")
  vim.api.nvim_set_var("hlsearch", oldhlsearch)
end

vim.api.nvim_command("command -bar -nargs=? ShowSpaces call ShowSpaces(<f-args>)")
vim.api.nvim_command("command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2> call TrimSpaces()")
