return {
  -- indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "mason",
        },
      },
    },
    main = "ibl",
  },
  -- highlight and animate current indentation level
  {
    "echasnovski/mini.indentscope",
    version = false,
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function ()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "mason",
        },
        callback = function ()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
}

