# homebrew-tap

Homebrew casks for my macOS apps.

## Janus

[Janus](https://github.com/RamitVishwakarma/Janus) switches Claude Code and Codex
accounts from the menu bar.

```sh
brew install --cask ramitvishwakarma/tap/janus
```

I sign Janus ad-hoc rather than with a paid Apple Developer certificate. macOS
puts a quarantine flag on anything signed that way and refuses to open it, so
the cask clears the flag once the app is installed. If Janus still will not
open, clear it yourself:

```sh
xattr -dr com.apple.quarantine /Applications/Janus.app
```
