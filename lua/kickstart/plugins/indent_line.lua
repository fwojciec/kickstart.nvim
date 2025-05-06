return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    config = function()
      -- Create a minimal setup with indent guides disabled by default
      require("ibl").setup({
        enabled = false,
        indent = { char = "▏" },
        scope = { enabled = false },
      })
      
      -- Create autocommands to enable indentation for specific filetypes
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {"yaml", "yml", "helm"},
        callback = function()
          require("ibl").setup_buffer(0, { enabled = true })
        end,
      })
      
      -- Disable the built-in listchars for tabs
      -- We'll use ibl exclusively for visualization
      vim.opt.list = false
    end,
  },
}
