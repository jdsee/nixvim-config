{
  config.keymaps = [

    ### GENERAL ###

    {
      key = "<leader>y";
      action = "\"*y";
      options = {
        silent = true;
        desc = "Yank to system clipboard";
      };
    }
    {
      key = "<leader>p";
      action = "\"*p";
      options = {
        silent = true;
        desc = "Paste from system clipboard";
      };
    }

    ### LSP ###

    {
      key = "<leader>rf";
      # TODO: Consider changing this functionality to vim's = when no lsp attached
      action = "vim.lsp.buf.format";
      options = {
        silent = true;
        desc = "Reformat buffer";
      };
    }
  ];
}
