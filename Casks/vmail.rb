cask "vmail" do
  version "1.0.2"
  sha256 "fde88d53473128658577ec0d4f39e9f7772474dc33a40a71cdf322831d340088"

  url "https://github.com/seongilp/vmail/releases/download/v#{version}/vmail-#{version}.dmg"
  name "vmail"
  desc "Fast, lightweight native mail client"
  homepage "https://github.com/seongilp/vmail"

  depends_on macos: :ventura

  app "vmail.app"

  zap trash: [
    "~/Library/Caches/com.zihado.vmail",
    "~/Library/Preferences/com.zihado.vmail.plist",
    "~/Library/Saved Application State/com.zihado.vmail.savedState",
  ]
end
