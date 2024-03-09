{ config, ... }:
{
  autoGroups = {
    YankHighlight = {
      clear = true;
    };
    TextFileSettings = {
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
    {
      event = "BufEnter";
      pattern = [ "*.md" "*.adoc" "*.tex" "*.txt" "*.typ" ];
      group = "TextFileSettings";
      desc = "Activate spellcheck and line wraps for text files";
      command = "setlocal spell wrap";
    }
  ];
}

