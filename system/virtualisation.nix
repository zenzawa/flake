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

    podman = {
      enable = true;
      dockerCompat = true;
    };
  };
}
