cask "gom" do
  version "1.4.1"
  sha256 "26152c454c6cde267bcd260b0b1beda35ab3364b8f94f43b7c1fa03ec1021609"

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
