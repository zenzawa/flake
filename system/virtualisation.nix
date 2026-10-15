{pkgs, ...}: {
  programs.virt-manager.enable = true;
  services.qemuGuest.enable = true;
  hardware.nvidia-container-toolkit.enable = true;

  virtualisation = {
    libvirtd = {
      enable = true;

      qemu = {
        package = pkgs.qemu_kvm;
      };
    };

    spiceUSBRedirection.enable = true;
    oci-containers.backend = "podman";

    podman = {
      enable = true;
      dockerCompat = true;
    };

    oci-containers.containers = {
      degoog = {
        image = "ghcr.io/degoog-org/degoog:latest";
        ports = ["4444:4444"];
        volumes = ["/var/lib/degoog:/app/data"];
        environment = {
          DEGOOG_DANGEROUSLY_NO_PASSWORD = "true";
        };
        extraOptions = ["--security-opt=label=disable"];
      };
    };
  };

  systemd.tmpfiles.rules = [
    "d /var/lib/degoog 0755 root root -"
  ];
}
