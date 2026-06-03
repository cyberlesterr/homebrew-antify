cask "antify" do
  version "0.0.49"
  sha256 "0b4f1c18d451047378d3e4be4803224cec18cc9f8f4d661266da018dc76127ab"

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
