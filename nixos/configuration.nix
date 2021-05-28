{ config, pkgs, ... }:

{
  # imports
  imports = [
    ./hardware/thinkpad-t430.nix
  ];

  # boot
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "/dev/sda";
  };

  # environment
  environment = {

    # packages
    systemPackages = with pkgs; [
      # audio/video
      graphviz
      gnuplot

      # cli applications
      cmus
      haskellPackages.hledger
      htop
      maim
      mop
      pass
      rtorrent
      screenfetch
      tree
      w3m
      weechat

      # editors
      emacs
      vim

      # gui applications
      chromium
      dropbox-cli
      dropbox
      zathura

      # programming: c / c++
      doxygen
      gcc
      gnumake
      valgrind

      # programming: fortran
      gfortran

      # programming: git
      git

      # programming: haskell
      ghc
      stack
      haskellPackages.hmatrix

      # programming: java
      openjdk

      # programming: latex
      auctex
      texlive.combined.scheme-full

      # programming: octave
      octave

      # programming: python / data-mining
      python
      python3
      weka

      # scientific / mathematical packages
      # eigen
      # liblapack
      # openblas

      # system
      xorg.xbacklight

      # theme/appearance

      # utilities
      aspell
      aspellDicts.en
      borgbackup
      dmenu
      gnupg
      manpages
      slop
      wget
      xterm
      zlib

      # window manager: xmonad
      haskellPackages.xmobar
      haskellPackages.xmonad
      haskellPackages.xmonad-contrib
      haskellPackages.xmonad-extras
    ];
  };

  # fonts
  fonts = {
    enableCoreFonts = false;
    enableDefaultFonts = false;
    fonts = [
      pkgs.noto-fonts
      pkgs.fira-mono
      pkgs.lmodern
      pkgs.liberation_ttf
      pkgs.terminus_font
    ];
  };

  # hardware
  hardware = {
    enableAllFirmware = true;
    pulseaudio.enable = true;
    brightnessctl.enable = true;
  };

  # internationalisation
  time.timeZone = "Australia/Perth";
  i18n = {
    defaultLocale = "en_AU.UTF-8";
    consoleFont = "lmodern";
    consoleKeyMap = "us";
  };

  # networking
  networking.hostName = "alpha";
  networking.networkmanager.enable = true;

  # nix
  nix = {
    requireSignedBinaryCaches = false;
  };

  # nixpkgs
  nixpkgs.config = {

    # unfree software
    allowUnfree = true;

    # chromium
    chromium = {
      enablePepperFlash = false;
      enableWideVine = false;
    };
  };

  # programs
  programs = {

    # bash
    bash = {
      enableCompletion = true;
      interactiveShellInit =
        ''
          if [ -e $HOME/.bash_profile ]; then
            . $HOME/.bash_profile
          fi
        '';
    };

    # slock
    slock = {
      enable = true;
    };
  };

  # security
  security.sudo = {
    enable = true;

    wheelNeedsPassword = true;
  };

  # services
  services = {

    # acpid (thinkpad buttons)
    acpid.enable = true;

    # openssh
    openssh.enable = true;

    # printing
    printing.enable = true;

    # xserver
    xserver = {
      enable = true;

      # desktop manager
      desktopManager = {
      	xterm.enable = true;
      };

      # display manager
      displayManager.sessionCommands =
        ''
          xrdb "${
            pkgs.writeText "xrdb.conf"
              ''
                xterm*termName: xterm-256color

                xterm*faceSize: 10
                xterm*faceAntialis: false
                xterm*faceName: xft:fira mono

                xterm*boldMode: false
                xterm*colorBDMode: true
                xterm*colorBD: #ff8787

                xterm*locale: true
                xterm*utf8: 1

                xterm*saveLines: 16000
                xterm*jumpScroll: true
                xterm*scrollTtyOutput: true
                xterm*scrollBar: false

                xterm*metaSendsEscape: true
                xterm*eightBitInput: false
                xterm*eightBitOutput: true

                xterm*selectToClipboard: true

                xterm*bellIsUrgent: true
              ''
            }"
        '';

      # keyboard
      layout = "au";
      # xkbVariant = "qwerty";
      xkbVariant = "";

      # synaptics
      synaptics = {
        enable = true;
        accelFactor = "0.01";
        maxSpeed = "10.0";
        minSpeed = "0.6";
        twoFingerScroll = true;
      };

      # windowManager
      windowManager = {
        xmonad.enable = true;
        xmonad.enableContribAndExtras = true;
      };
    };
  };

  # system
  system = {

    # channel
    autoUpgrade = {
      enable = true;
      # channel = "https://nixos.org/channels/nixos-19.03";
    };
  };

  # users and groups
  users.extraUsers = {
    tom = {
      description = "Tom Ross";
      uid = 10000;

      isNormalUser = true;
      createHome = true;
      home = "/home/tom";

      group = "users";
      extraGroups = [
        "wheel"
      	"networkmanager"
        "video"
      ];
      shell = "/run/current-system/sw/bin/bash";
    };
  };
}
