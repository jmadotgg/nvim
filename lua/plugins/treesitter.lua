-- return {
--   "nvim-treesitter/nvim-treesitter",
--   build = ":TSUpdate",
--   event = { "BufReadPre", "BufNewFile" },
--   config = function()
--     require("nvim-treesitter.install").compilers = { "clang" }
-- 
--     local parsers_to_install = {
--       "c", "lua", "vim", "vimdoc", "query", "elixir", "heex",
--       "javascript", "html", "rust", "css", "wgsl"
--     }
--     require("nvim-treesitter.install").install(parsers_to_install)
-- 
--     vim.treesitter.configs = vim.treesitter.configs or {}
--     vim.treesitter.configs.highlight = { enable = true }
--     vim.treesitter.configs.indent = { enable = true }
-- 
--     -- REMOVED: ts.start() autocmd - Treesitter auto-attaches now!
--   end,
-- }

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    local parsers = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "elixir",
      "heex",
      "javascript",
      "html",
      "rust",
      "css",
      "wgsl",
    }

    -- Asynchronously install any missing parsers.
    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = parsers,
      callback = function(args)
        -- Enables Tree-sitter highlighting for buffers with an installed parser.
        vim.treesitter.start(args.buf)

        -- Optional: Tree-sitter indentation; still considered experimental.
        vim.bo[args.buf].indentexpr =
          "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
