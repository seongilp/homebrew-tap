cask "gom" do
  version "1.4.0"
  sha256 "bdee8f790fcf2e3dcedb248d6fe5daf7032bb858b61c8e5b7b1fef157f33ad92"

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
