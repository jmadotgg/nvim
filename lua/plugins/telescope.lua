return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "package%-lock%.json",
        "yarn%.lock",
        "pnpm%-lock%.yaml",
        "node_modules/",
      },
    },
  },
  version = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
}
