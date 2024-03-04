{
  plugins.todo-comments = {
    enable = true;
    keymaps = {
      todoTelescope = {
        key = "<leader>ft";
        options = {
          desc = "Search TODO comments";
          silent = true;
        };
      };
      todoTrouble = {
        key = "<leader>xt";
        options = {
          desc = "Search TODO comments";
          silent = true;
        };
      };
    };
  };
}
