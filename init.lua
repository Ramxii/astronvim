-- Go to for config help
-- https://github.com/AstroNvim/user_example/tree/main

return {
  -- Theme
  colorscheme = "catppuccin",

  -- Plugins
  plugins = {
    { "catppuccin/nvim", 
      name = "catppuccin", 
      priority = 1000 
    },
    {
      "iamcco/markdown-preview.nvim",
      event = "BufRead",
      config = function()
        vim.fn["mkdp#util#install"]()
      end,
    },
    {
      "arnamak/stay-centered.nvim",
      event = "BufRead",
      config = function()
        require("stay-centered").setup()
      end,
    }
  },

  -- Icons
  icons = {
    GitUntracked = " ",
  }
}
