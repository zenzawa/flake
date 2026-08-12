{...}: {
  networking = {
    hostName = "senzawa";

    networkmanager = {
      enable = true;
    };

    firewall = {
      enable = true;
      trustedInterfaces = ["virbr0" "vnet0"];

      interfaces."wlo1" = {
          allowedUDPPorts = [ 53 67 ];
          allowedTCPPorts = [53];
        };
    };
  };
}
