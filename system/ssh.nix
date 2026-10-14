{...}: {
  programs.ssh = {
    startAgent = true;
    extraConfig = ''
      Host github.com
         HostName github.com
         User git
         IdentityFile ~/.ssh/zenkey
         AddKeysToAgent yes
         IdentitiesOnly yes
    '';
  };
}
