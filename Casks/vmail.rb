cask "vmail" do
  version "1.0.3"
  sha256 "8d069d4d4f833119cfd8a4f819dcf60a774a7babd5a42df2e43279cdb98c72f8"

  url "https://github.com/seongilp/vmail/releases/download/v#{version}/vmail-#{version}.dmg"
  name "vmail"
  desc "Fast, lightweight native mail client"
  homepage "https://github.com/seongilp/vmail"

  depends_on macos: :ventura

  app "vmail.app"
  binary "#{appdir}/vmail.app/Contents/MacOS/vmail-cli", target: "vmail"

  zap trash: [
    "~/Library/Caches/com.zihado.vmail",
    "~/Library/Preferences/com.zihado.vmail.plist",
    "~/Library/Saved Application State/com.zihado.vmail.savedState",
  ]
end
