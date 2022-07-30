{ pkgs ? import <nixpkgs> {}}:
 pkgs.mkShell {
    buildInputs = with pkgs; [
      exa
      fd
      ripgrep
      bat
      go
      gopls
      lazygit
      difftastic
    ];

    shellHook = ''
      export GIT_EXTERNAL_DIFF=difft
      alias ll="exa -altaccessed"
    '';
   }
