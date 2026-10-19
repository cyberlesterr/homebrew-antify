cask "antify" do
  version "0.0.81"
  sha256 "1cc9643beb614ac9fb6f4a36149ef95fda8274704554b65902cbbcb479c10a5c"

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
