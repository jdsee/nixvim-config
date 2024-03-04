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

    cmp-emoji.enable = true;
    cmp-cmdline.enable = true;
    cmp-cmdline-history.enable = true;

    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      sources = [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
      ];

      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-y>" = "cmp.mapping.confirm({ select = true })";
        "<C-p>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [ "i" "s" ];
        };
        "<C-n>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [ "i" "s" ];
        };
      };
    };
  };
}

