{...}: {
  programs.git = {
    enable = true;
    signing.format = null;
    settings = {
      user.name = "zenzawa";
      user.email = "madhavkage@gmail.com";
    };
  };
}
