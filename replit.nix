{ pkgs }: {
    deps = [
      pkgs.figlet
      pkgs.lolcat
      pkgs.toilet
      pkgs.cowsay
        pkgs.neo-cowsay
        pkgs.fortune
        pkgs.sudo
        pkgs.unzip
        pkgs.wget
        pkgs.bashInteractive
        pkgs.man
    ];
}