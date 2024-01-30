return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.beautysh,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.clang_format,
          -- null_ls.builtins.formatting.cmakelang, -- Not sure how to connect Mason package and null_ls
          null_ls.builtins.formatting.docformatter,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.formatting.latexindent,
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.verible_verilog_format,
          
          -- null_ls.builtins.diagnostics.debugpy, -- Not usable with null_ls, watch a guide or something
          null_ls.builtins.diagnostics.codespell,
          null_ls.builtins.diagnostics.checkmake,
          null_ls.builtins.diagnostics.shellcheck,
          null_ls.builtins.diagnostics.yamllint,
          null_ls.builtins.diagnostics.cpplint,
          null_ls.builtins.diagnostics.cmakelint,
          null_ls.builtins.diagnostics.flake8,
          -- null_ls.builtins.diagnostics.cmakelang, -- Not sure how to connect Mason package and null_ls
          -- null_ls.builtins.diagnostics.verible, -- Shows up in Mason as Linter AND Formatter, but only supported as formatter in null_ls
        },
      })
      vim.keymap.set("n", "<space>ff", vim.lsp.buf.format, {})
    end,
  },
}
