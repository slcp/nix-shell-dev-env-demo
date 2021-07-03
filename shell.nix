{ pkgs ? import <nixpkgs> {} }:
with pkgs;

let
  extensions = (with pkgs.vscode-extensions; [
      bbenoist.Nix
      # eamodio.gitlens
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
      name = "nix-env-selector";
      publisher = "arrterian";
      version = "1.07";
      sha256 = "0e76885c9dbb6dca4eac8a75866ec372b948cc64a3a3845327d7c3ef6ba42a57";
  }];
  vscode-with-extensions = pkgs.vscode-with-extensions.override {
      vscodeExtensions = extensions;
    };
in mkShell {
  buildInputs = [ pkgs.python3 vscode-with-extensions ];
}