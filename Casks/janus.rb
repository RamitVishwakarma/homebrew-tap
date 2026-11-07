cask "janus" do
  version "2.0.0"
  sha256 "ec99b98425c01d9031637d0e224a474195b414736f657e8bf624c13cef255602"

  url "https://github.com/RamitVishwakarma/Janus/releases/download/v#{version}/Janus-#{version}.zip"
  name "Janus"
  desc "Switch Claude Code and Codex accounts"
  homepage "https://github.com/RamitVishwakarma/Janus"

  depends_on macos: :ventura

  app "Janus.app"

  # Janus is signed ad-hoc, not notarised, so macOS refuses to open it while the
  # quarantine flag is set. Homebrew dropped --no-quarantine, so clear it here.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Janus.app"]
  end

  zap trash: [
    "~/Library/Application Support/Janus",
    "~/Library/Preferences/com.ramitvishwakarma.janus.plist",
  ]
end
