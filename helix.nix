{ pkgs, ... }:

{
  home.packages = with pkgs; [
    helix
    nil # Nix Language Server
    pyright # Python Language Server
  ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "onedark";
      editor = {
        line-number = "relative";
        lsp.display-messages = true;
      };
    };
    languages = {
      language = [
        {
          name = "nix";
          language-servers = [ "nil" ];
          auto-format = true;
        }
        {
          name = "python";
          language-servers = [ "pyright" ];
          auto-format = true;
        }
      ];
    };
  };
}
