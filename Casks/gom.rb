cask "gom" do
  version "1.2.1"
  sha256 "3387c35e83a333dca14c1fb7323ad2c636a4c8346155c621e01194d5adbae0c6"

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
