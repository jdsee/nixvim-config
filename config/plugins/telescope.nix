{
  plugins.telescope = {
    enable = true;

    extraOptions = {
      prompt_prefix = " ";
    };

    extensions = {
      undo = {
        enable = true;
        useDelta = true;
        sideBySide = true;
      };

      ui-select.enable = true;
      fzf-native.enable = true;
      frecency.enable = true;
    };

    keymapsSilent = true;
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        desc = "Find files in project";
      };
      "<leader>fg" = {
        action = "grep_string";
        desc = "Grep files in project";
      };
    };
  };
}
