# homebrew-tap

Homebrew casks for my macOS apps.

## Janus

[Janus](https://github.com/RamitVishwakarma/Janus) switches Claude Code accounts
and clears developer caches from the menu bar.

```sh
brew install --cask --no-quarantine ramitvishwakarma/tap/janus
```

I sign Janus ad-hoc rather than with a paid Apple Developer certificate. macOS
puts a quarantine flag on anything signed that way and refuses to open it the
first time, so `--no-quarantine` tells Homebrew to skip the flag. Leave the
option off and you clear the flag yourself:

```sh
xattr -dr com.apple.quarantine /Applications/Janus.app
```
