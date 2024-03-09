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
      desc = "Highlight selection on yank";
      event = "TextYankPost";
      pattern = "*";
      group = "YankHighlight";
      callback.__raw = /*lua*/''
        function ()
          vim.highlight.on_yank { timeout = 100 }
        end
      '';
    }

    {
      desc = "Activate spellcheck and line wraps for text files";
      event = "BufEnter";
      pattern = [ "*.md" "*.adoc" "*.tex" "*.txt" "*.typ" ];
      group = "TextFileSettings";
      command = "setlocal spell wrap";
    }

    {
      desc = "Show Macro indicator when recording";
      event = "RecordingEnter";
      pattern = "*";
      command = "set cmdheight=1";
    }

    {
      desc = "Hide Macro indicator when not recording";
      event = "RecordingLeave";
      pattern = "*";
      command = "set cmdheight=0";
    }

    {
      desc = "Turn off cursorline when leaving buffer";
      event = "WinLeave";
      pattern = "*";
      command = "set nocul";
    }

    {
      desc = "Turn on cursorline when entering buffer";
      event = "WinEnter";
      pattern = "*";
      command = "set cul";
    }

    {
      desc = "Turn off cursorline in telescope prompt";
      event = "FileType";
      pattern = "TelescopePrompt";
      command = "set nocul";
    }
  ];
}

