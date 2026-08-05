cask "antify" do
  version "0.0.59"
  sha256 "8c0bf504ff73f5c4dce33a2f6ddbc9b21bf5bf5e589194959b313d60f9bd1ca2"

  url "https://r2.antifyapp.com/releases/v#{version}/Antify.dmg"
  name "Antify"
  desc "Per-app transparent proxy for macOS"
  homepage "https://antifyapp.com"

  auto_updates true
  depends_on macos: :sonoma

  app "Antify.app"

  zap trash: [
    "~/Library/Application Support/Antify",
    "~/Library/Preferences/com.lester.Antify.plist",
    "~/Library/Group Containers/group.app.com.lester.Antify",
  ]
end
