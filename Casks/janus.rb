cask "janus" do
  version "2.0.0"
  sha256 "ec99b98425c01d9031637d0e224a474195b414736f657e8bf624c13cef255602"

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
