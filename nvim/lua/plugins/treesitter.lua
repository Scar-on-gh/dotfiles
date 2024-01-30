return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      -- auto_install = true, -- Alternative to ensure_install <every lang I might encounter>
      ensure_installed = { 
        "bash",
        "c",
        "cmake",
        "cpp", 
        "css",
        "csv",
        "diff",
        "dockerfile", 
        "doxygen",
        "git_config", 
        "git_rebase", 
        "gitcommit",
        "gitignore", 
        "groovy", 
        "html",
        "latex", 
        "lua",
        "make",
        "markdown", 
        "ninja", 
        "perl", 
        "python", 
        "r", 
        "regex",
        "ruby",
        "rust",
        "sql",
        "ssh_config",
        "verilog",
        "yaml" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
