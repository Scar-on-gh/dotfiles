return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    --    opts = {
    --      auto_install = true,
    --    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "autotools-language-server",  --Make, automake
          "bashls",                     --Bash
          "clangd",                     --C, C++
          "cmake",                      --Cmake
          "dockerls",                   --Docker
          "docker_compose_language_service", --Docker compose
          "groovyls",                   --Groovy
          "html",                       --HTML
          "jsonls",                     --JSON
          "lua_ls",                     --Lua
          "marksman",                   --Markdown
          "perlnavigator",              --Perl
          "pyright",                    --Python
          -- 'ruby_ls', --Ruby
          "sqls",                       --SQL
          "svlangserver",               --SystemVerilog
          "taplo",                      --TOML
          "yamlls",                     --YAML
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    -- lazy = false,
    config = function()
      -- The nvim-cmp almost supports LSP's capabilities so you should advertise it to LSP servers..
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      --lspconfig.autotools-language-server.setup({})
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })
      lspconfig.cmake.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities,
      })
      lspconfig.groovyls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.marksman.setup({
        capabilities = capabilities,
      })
      lspconfig.perlnavigator.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      -- lspconfig.ruby_ls.setup({
      --  capabilities = capabilities
      --  })
      lspconfig.sqls.setup({
        capabilities = capabilities,
      })
      lspconfig.svlangserver.setup({
        capabilities = capabilities,
      })
      lspconfig.taplo.setup({
        capabilities = capabilities,
      })
      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
