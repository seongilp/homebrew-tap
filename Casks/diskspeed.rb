cask "diskspeed" do
  version "1.0.0"
  sha256 "aa923f8cf5b5cb4b0ad9178fb7c209263243bde686ed6b096c94cc5a585ab356"

  url "https://github.com/seongilp/diskspeed/releases/download/v#{version}/diskspeed-#{version}.dmg"
  name "diskspeed"
  desc "Disk benchmark for internal, external, and network drives"
  homepage "https://github.com/seongilp/diskspeed"

  depends_on macos: ">= :ventura"

  app "diskspeed.app"

  zap trash: [
    "~/Library/Preferences/com.zihado.diskspeed.plist",
    "~/Library/Saved Application State/com.zihado.diskspeed.savedState",
  ]
end
