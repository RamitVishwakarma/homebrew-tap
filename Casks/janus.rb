cask "janus" do
  version "1.2.1"
  sha256 "4237953c04d74e254b2c5e0384b5b2d34780bb1fa99507392ec24d14f1dd0f1f"

  url "https://github.com/RamitVishwakarma/Janus/releases/download/v#{version}/Janus-#{version}.zip"
  name "Janus"
  desc "Switch Claude Code and Codex accounts"
  homepage "https://github.com/RamitVishwakarma/Janus"

  depends_on macos: :ventura

  app "Janus.app"

  zap trash: [
    "~/Library/Application Support/Janus",
    "~/Library/Preferences/com.ramitvishwakarma.janus.plist",
  ]
end
