local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  group = augroup("changedir"),
  callback = function()
    vim.cmd("cd " .. vim.fn.expand("%:p:h"))
  end
})

