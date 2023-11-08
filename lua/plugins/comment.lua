return {
  "numToStr/Comment.nvim",
  opts = {
    -- add any options here
  },
  lazy = false,
  config = function(plugin, opts)
    require("Comment").setup()
  end,
}
