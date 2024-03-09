{ config, ... }:
{
  autoGroups = {
    YankHighlight = {
      clear = true;
    };
  };
  autoCmd = [
    {
      event = "TextYankPost";
      pattern = "*";
      group = "YankHighlight";
      desc = "Highlight selection on yank";
      callback.__raw = /*lua*/''
        function ()
          vim.highlight.on_yank { timeout = 100 }
        end
      '';
    }
  ];
}

