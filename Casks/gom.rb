cask "gom" do
  version "1.1.0"
  sha256 "163fd123615dc98947a5f3116e48738b27d87edc0ae9061230de5babcf1d8b7e"

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
