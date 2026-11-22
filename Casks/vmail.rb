cask "vmail" do
  version "1.0.0"
  sha256 "6fdfe82d622624ee57c530257e4537b1e130e0b21bd233129f33e668b1bc96d8"

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
