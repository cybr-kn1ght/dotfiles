-- [[ Install `lazy.nvim` plugin manager if not already existing ]]
-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info

-- Define where lazy should be
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

-- Install lazy if it does not exist
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

-- Add lazy to Neovim's runtimepath
---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)
