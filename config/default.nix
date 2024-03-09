{ pkgs, ... }:
{
  imports = [
    ./autocommands.nix
    ./options.nix
    ./keymaps.nix
    ./plugins
  ];

  config = {
    colorschemes.tokyonight.enable = true;
    clipboard.providers.wl-copy.enable = true;
  };
}
