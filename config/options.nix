let
  indent = 2;
in
{
  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    options = {
      number = true;
      relativenumber = true;

      # Tabs and Spaces
      tabstop = indent;
      softtabstop = indent;
      shiftwidth = indent;
      backspace = [ "indent" "eol" "nostop" ];
      smarttab = true;
      expandtab = true; # use spaces as tab
      smartindent = true; # auto indent on insert
      autoindent = true;
      joinspaces = false; # prevent some weird extra spaces
      # filetype.indent = true; TODO: How to add this via Nixvim?

      # General
      wrap = false; # don"t wrap lines
      mouse = "a"; # mouse support in all modes
      hidden = true; # hide buffers without saving
      spell = true;
      spelllang = "en_us,de_de";
      linebreak = true; # wrap whole lines if line wrap active
      swapfile = false;

      # Windows
      equalalways = false; # no window resize
      splitright = true; # open new vertical splits on the right
      splitbelow = true; # open new horizontal splits on the bottom
      laststatus = 3; # use global statusline

      # Formatting
      # TODO: translate this to Nix
      # formatoptions = opt.formatoptions
      #     - "a" ;# no autoformat
      #     - "o" ;# don"t continue comments with o
      # formatoptions:remove "o"

      # Completion
      wildmode = "longest:full";
      wildoptions = "pum";
      completeopt = [ "menu" "menuone" "noselect" ];
      # TODO: shortmess:append "a"                -- use all message abbreviations

      # Scrolling
      scrolloff = 2; # keep cursor away from vertical borders
      sidescrolloff = 2; # keep cursor away from horizontal borders

      # Theme
      syntax = "on"; # basic syntax highlighting
      showmatch = true; # show matching brackets
      cursorline = true; # highlight current line
      cmdheight = 0; # hide command line when not used

      # Search and Command
      ignorecase = true; # case insensitive matching
      inccommand = "nosplit"; # visualize command while typing
      hlsearch = false; # don"t highlight search results
    };
  };
}
