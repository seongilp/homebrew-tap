cask "gom" do
  version "1.2.0"
  sha256 "f82835ef666b21e71261bb2e37c46e89717a7ebc1f0987816bcdff53617b5c57"

  url "https://github.com/seongilp/gom/releases/download/v#{version}/Gom-#{version}.dmg"
  name "Gom"
  desc "Minimal, fast video player for macOS"
  homepage "https://github.com/seongilp/gom"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Gom.app"

  zap trash: [
    "~/Library/Preferences/com.zihado.gom.plist",
    "~/Library/Saved Application State/com.zihado.gom.savedState",
  ]
end
