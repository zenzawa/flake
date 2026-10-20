# Celluloid

for celluloid import dots/celluloid.conf in preferences input configuration file

# Firefox

firefox colors:
Toolbar color: #e3e3e3
background color: #f0d1f1
search bar color: #ffffff
tab highlight color: #e6e8fd
popup text: #4117ee
toolbar icons and text: #4117ee
background tab text color: #ffffff
search text: #4117ee
popup background: #ffffff

# Steam
In Steam, open a game’s Properties → Launch Options and set:
`nvidia-offload %command%`

with mangohud:

`MANGOHUD_CONFIG=fps,gpu_name,gpu_stats mangohud nvidia-offload %command%`

## toggle mangohud

`Right Shift + F12`

## remote play

Steam → Settings → Remote Play → turn on Enable Remote Play.
Under Advanced Host Options, you can turn on hardware encoding and pick network settings.

# Deepseek harness

I also have this problem when using Node.js provided by nixpkgs on macOS arm64, and... --expose-internalsIt seems to be ineffective. Essentially, it doesn't support the nixpkgs self-compiled node binary. Solution:

- Install fnm (Node.js version manager) via nixpkgs or other channels.
- fnm install 26Install node 26
- Using direnv .envrcEnable node 26 in the deepseek git repo:

```
# .envrc file
eval "$(fnm env --shell bash)"
fnm use 26 >/dev/null

```

Finally, you can `.git/info/excludeAdd` the `untrack` option to your `.envrc` file to prevent accidental commits. This cleanly resolves the node binary issue.

