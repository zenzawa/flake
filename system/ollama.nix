{pkgs, ...}: {
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  services.tailscale = {
      enable = true;
    };
}
