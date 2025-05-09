return {
  'bettervim/yugen.nvim',
  config = function()
    local function colorFunction(color)
      color = color or "yugen"
      vim.cmd.colorscheme(color)
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

    colorFunction()
  end
}

