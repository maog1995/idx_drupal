# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.php83
    pkgs.php83Packages.composer
  ];
  # Sets environment variables in the workspace
  env = { };
  services.mysql = {
    enable = true;
  };
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "rangav.vscode-thunder-client"
      "mtxr.sqltools"
      "mtxr.sqltools-driver-mysql"
    ];
    workspace = {
      onCreate = {
        # Open editors for the following files by default, if they exist:
        default.openFiles = [ "index.php" ];
      };
      # Runs when a workspace is (re)started
      onStart = {
        run-server = "cd my_site/web && php -S localhost:3000 .ht.router.php";
      };
    };
  };
}
