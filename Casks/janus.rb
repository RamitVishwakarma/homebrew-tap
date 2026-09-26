cask "janus" do
  version "1.0.1"
  sha256 "c4b2d5a297a416e29679d19eae00f0f4d3248ea0c35bfa6a9ef8e8173e2e41ba"

  url "https://github.com/RamitVishwakarma/Janus/releases/download/v#{version}/Janus-#{version}.zip"
  name "Janus"
  desc "Switch Claude Code accounts and clear developer caches from the menu bar"
  homepage "https://github.com/RamitVishwakarma/Janus"

  depends_on macos: :ventura

  app "Janus.app"

  zap trash: [
    "~/Library/Application Support/Janus",
    "~/Library/Preferences/com.ramitvishwakarma.janus.plist",
  ]
end
