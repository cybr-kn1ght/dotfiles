-- [[ File Type Detection ]]

-- Detect angular html files
vim.filetype.add {
  pattern = {
    ['.*%.component%.html'] = 'angular.html',
  },
}
