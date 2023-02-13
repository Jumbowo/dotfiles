return {
  -- Onedark
  "navarasu/onedark.nvim",
  config = function() 
    require("onedark").setup {
      style = "darker",
      transparent = "true",
      code_style = {
        comments = "none",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none",
      },
    }
  end
}
