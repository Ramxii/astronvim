-- Go to for config help
-- https://github.com/AstroNvim/user_example/tree/main
return {
   -- Theme
   colorscheme = "monokai-pro",

   lsp = {
      servers = {
         "clangd",
      },
      config = {
         clangd = {
            capabilities = {
               offsetEncoding = "utf-16",
        },
      },
    },
  },

   -- Icons
   icons = {
     GitUntracked = " ",
   },

   -- Plugins
   plugins = {

      {
         "loctvl842/monokai-pro.nvim",
         config = function()
         require("monokai-pro").setup({
            filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
            background_clear = {"toggleterm", "float_win"}
         })
         end
      },
    {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
        opts.winbar = nil
        return opts
      end
    },
    
   },

}
