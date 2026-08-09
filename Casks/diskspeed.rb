cask "diskspeed" do
  version "1.0.1"
  sha256 "9314952b70a0e7a473d48a31178e2a046f9b76d6d8d2bc27c2959d198fce2515"

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
