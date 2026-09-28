cask "janus" do
  version "1.2.0"
  sha256 "66dd83e671d40a881da644eadcf85e1705732c8c4a91447e4e7972d6ded40adb"

  url "https://github.com/RamitVishwakarma/Janus/releases/download/v#{version}/Janus-#{version}.zip"
  name "Janus"
  desc "Switch Claude Code and Codex accounts, and clear developer caches"
  homepage "https://github.com/RamitVishwakarma/Janus"

  depends_on macos: :ventura

  app "Janus.app"

  zap trash: [
    "~/Library/Application Support/Janus",
    "~/Library/Preferences/com.ramitvishwakarma.janus.plist",
  ]
end
