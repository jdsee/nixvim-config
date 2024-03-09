{
  plugins = {
    lsp-format.enable = true;
    lspkind.enable = true;
    luasnip.enable = true; # TODO: add friendly snippets

    rustaceanvim.enable = true;

    lsp = {
      enable = true;

      servers = {
        clangd.enable = true;
        dockerls.enable = true;
        elmls.enable = true;
        gopls.enable = true;
        html.enable = true;
        htmx.enable = true;
        java-language-server.enable = true;
        jsonls.enable = true;
        kotlin-language-server.enable = true;
        lua-ls.enable = true;
        marksman.enable = true;
        metals.enable = true;
        pyright.enable = true;
        rnix-lsp.enable = true;
        tailwindcss.enable = true;
        terraformls.enable = true;
        texlab.enable = true;
        tsserver.enable = true;
        typos-lsp.enable = true;
        typst-lsp.enable = true;
        volar.enable = true;
        yamlls.enable = true;
      };

      keymaps = {
        silent = true;
        diagnostic = {
          "[d" = "goto_prev";
          "]d" = "goto_next";
          "gh" = "open_float";

          # FIXME: Where should this go?
          # "<leader>s" = "require('nvim-navbuddy').open";
        };
        lspBuf = {
          "gD" = "declaration";
          "gd" = "definition";
          "gi" = "implementation";
          "gt" = "type_definition";
          "K" = "hover";
          "<C-K>" = "signature_help";
          "<leader>a" = "code_action";
          "<Leader>rr" = "rename";
          "<Leader>rn" = "rename";
          "<Leader>rf" = "format";
        };
      };
    };

    friendly-snippets.enable = true;
    cmp_luasnip.enable = true;
    cmp-path.enable = true;
    cmp-emoji.enable = true;
    cmp-cmdline.enable = true;
    cmp-cmdline-history.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lsp-signature-help.enable = true;

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        experimental = {
          ghostText = true;
        };

        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];

        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.close()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-y>" = "cmp.mapping.confirm({ select = true })";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-n>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-p>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };
      };
    };
  };
}

