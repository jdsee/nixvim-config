{
  plugins.git-worktree = {
    enable = true;
    enableTelescope = true;
    clearJumpsOnChange = true;
  };

  keymaps = [
    {
      key = "<leader>gw";
      action = "require('telescope').extensions.git_worktree.git_worktrees";
      lua = true;
      options = {
        silent = true;
        desc = "Search Git Worktrees";
      };
    }
  ];
}
