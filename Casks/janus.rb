cask "janus" do
  version "2.1.0"
  sha256 "bd75c5786a16fb2df66aad461f526a24084a23241df79a241e561de9e38d155d"

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
