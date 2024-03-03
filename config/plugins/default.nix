{ pkgs, ... }:
{
  imports = [
    ./telescope.nix
    ./lsp.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    dressing-nvim
  ];

  plugins = {
    autoclose.enable = true;
    barbar.enable = true;
    comment-nvim.enable = true;
    fidget.enable = true;
    gitsigns.enable = true;
    harpoon.enable = true;
    illuminate.enable = true;
    indent-blankline.enable = true;
    lint.enable = true;
    lualine.enable = true;
    oil.enable = true;
    surround.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    vim-matchup.enable = true;
    wilder.enable = true;

    obsidian = {
      enable = false; # TODO: enable
      workspaces = [
        {
          name = "My Notes";
          path = "/home/jdsee/mynotes";
        }
      ];

      dailyNotes = {
        folder = "dailies";
        dateFormat = "%Y-%m-%d";
        # template = nil; TODO: Add template
      };
    };
  };
}
