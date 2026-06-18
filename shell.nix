{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    git
    gnumake
    gcc
    acpica-tools
    python3
    python3Packages.pyelftools
    util-linux
    dtc
    pkgsCross.aarch64-multiplatform.buildPackages.gcc
  ];

  shellHook = ''
    echo "EDK2-RK3588 Build Environment loaded."
    echo "To build, run: CROSS_COMPILE=aarch64-unknown-linux-gnu- ./build.sh -d orangepi-5pro -r RELEASE"
  '';
}
