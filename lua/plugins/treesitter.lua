return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter.install").compilers = { "clang" }

    local parsers_to_install = {
      "c", "lua", "vim", "vimdoc", "query", "elixir", "heex",
      "javascript", "html", "rust", "css", "wgsl"
    }
    require("nvim-treesitter.install").install(parsers_to_install)

    vim.treesitter.configs = vim.treesitter.configs or {}
    vim.treesitter.configs.highlight = { enable = true }
    vim.treesitter.configs.indent = { enable = true }

    -- REMOVED: ts.start() autocmd - Treesitter auto-attaches now!
  end,
}

