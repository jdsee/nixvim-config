{ pkgs, lib, ... }:
{
  imports = [
    ./conform.nix
    ./git-worktree.nix
    ./incline.nix
    ./lsp.nix
    ./lualine.nix
    ./telescope.nix
    ./todo-comment.nix
    ./yanky.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    dressing-nvim
  ];

  plugins = {
    bufferline.enable = true;
    comment-nvim.enable = true;
    fidget.enable = true;
    gitsigns.enable = true;
    harpoon.enable = true;
    illuminate.enable = true;
    inc-rename.enable = true;
    indent-blankline.enable = true;
    lint.enable = true;
    navbuddy.enable = true;
    navic.enable = true;
    nvim-autopairs.enable = true;
    oil.enable = true;
    surround.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    vim-matchup.enable = true;
    wilder.enable = true;
  };
}
