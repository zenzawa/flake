{...}: {
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock";
        before_sleep_cmd = "playerctl pause ; hyprlock";
        ignore_dbus_inhibit = false;
      };

      listener = [
        {
          timeout = 2000;
          on-timeout = "loginctl lock-session";
        }

        {
          timeout = 995;
          on-timeout = "brightnessctl s 1%";
          on-resume = "brightnessctl s 5%";
        }
      ];
    };
  };
}
