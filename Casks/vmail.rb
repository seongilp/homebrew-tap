cask "vmail" do
  version "1.0.1"
  sha256 "7d9fc253286de84c6f6dfa7366709418395b62591a768498206724ee6c642ea5"

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
