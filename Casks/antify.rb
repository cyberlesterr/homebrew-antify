cask "antify" do
  version "0.0.48"
  sha256 "2be4c46c6aaa7f48b550c76c0df55310ddc059eee5d707dcd3cf57d58d7a0bd6"

  url "https://r2.antifyapp.com/releases/v#{version}/Antify.dmg"
  name "Antify"
  desc "Per-app transparent proxy for macOS"
  homepage "https://antifyapp.com"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Antify.app"

  zap trash: [
    "~/Library/Application Support/Antify",
    "~/Library/Preferences/com.lester.Antify.plist",
    "~/Library/Group Containers/group.app.com.lester.Antify",
  ]
end
