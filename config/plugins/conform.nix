{
  plugins.conform-nvim = {
    # TODO: is this necessary?
    enable = false;
    notifyOnError = true;
    formattersByFt =
      {
        lua = [ "stylua" ];
        nix = [ "injected" ];
        python = [ "isort" "black" ];
        javascript = [ [ "prettierd" "prettier" ] ];
        "*" = [ "codespell" ];
        "_" = [ "trim_whitespace" ];
      };

  };
}
