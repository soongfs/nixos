{ config, pkgs, ... }:

{
  home.username = "soongfs";
  home.homeDirectory = "/home/soongfs";
  home.stateVersion = "25.05";

  home.sessionVariables = {
    EDITOR = "hx";
  };

  home.packages = with pkgs; [
    fastfetch
    nil
    pyright
  ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
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

  programs.git = {
    enable = true;
    settings = {
      user.name = "soongfs";
      user.email = "soongfs@proton.me";
    };
  };

  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      theme = "Catppuccin Mocha";
      font-family = "Maple Mono NF CN";
      font-size = 14;
      window-decoration = "none";
    };
  };

  programs.zed-editor = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      theme = "catppuccin-mocha";
    };
  };

  programs.fish.enable = true;

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.bat.enable = true;

  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.addons = with pkgs; [
      fcitx5-gtk # alternatively, kdePackages.fcitx5-qt
      # fcitx5-chinese-addons  # table input method support
      # fcitx5-nord # a color theme
      # fcitx5-tokyonight
      catppuccin-fcitx5
      qt6Packages.fcitx5-chinese-addons
    ];
  };
  programs.eza = {
    enable = true;
    git = true;
    colors = "auto";
    icons = "auto";
    theme = "catppuccin";
    enableFishIntegration = true;
  };

  programs.yazi = {
    enable = true;
    # theme = "dracula";
    settings = {
      theme = "catppuccin-mocha";
      preview.image_filter = "kitty";
    };
    enableFishIntegration = true;
  };

  programs.bottom = {
    enable = true;
  };

  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;
  };
}
