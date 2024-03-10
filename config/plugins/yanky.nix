{
  plugins.yanky = {
    enable = true;
    picker.telescope.enable = true;
    highlight.timer = 100;
  };

  keymaps = [
    {
      key = "<leader>fy";
      action = "<cmd>YankyRingHistory<cr>";
      mode = "n";
    }
    {
      key = "y";
      action = "<Plug>(YankyYank)";
      mode = [ "n" "x" ];
    }
    {
      key = "p";
      action = "<Plug>(YankyPutAfter)";
      mode = [ "n" "x" ];
    }
    {
      key = "P";
      action = "<Plug>(YankyPutBefore)";
      mode = [ "n" "x" ];
    }
    {
      key = "gp";
      action = "<Plug>(YankyGPutAfter)";
      mode = [ "n" "x" ];
    }
    {
      key = "gP";
      action = "<Plug>(YankyGPutBefore)";
      mode = [ "n" "x" ];
    }
    {
      key = "<C-p>";
      action = "<Plug>(YankyPreviousEntry)";
      mode = "n";
      options.silent = true;
    }
    {
      key = "<C-n>";
      action = "<Plug>(YankyNextEntry)";
      mode = "n";
      options.silent = true;
    }
  ];
}
