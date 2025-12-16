return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true, -- Show hidden/dotfiles
            ignored = false, -- Respect .gitignore
          },
          files = {
            hidden = true,
            ignored = false,
          },
          grep = {
            hidden = true, -- Also search in hidden files
            ignored = false,
          },
        },
      },
    },
  },
}
