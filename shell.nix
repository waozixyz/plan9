{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    socat
    u9fs
    plan9port
  ];

  shellHook = ''
    export PLAN9="${pkgs.plan9port}/plan9"
    export home=$HOME
    export PATH="$PLAN9/bin:$PATH"
  '';
}
