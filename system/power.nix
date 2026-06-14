{lib, ...}: {
  services.tlp.enable = false;
  services.upower.enable = lib.mkForce false;
}
