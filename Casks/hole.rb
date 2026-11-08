cask "hole" do
  version "1.0.0"
  sha256 "55e0ca45d4b6832403d073238d6f83e9e38fc8ea26b5d0ffc8cca5c1f122c69d"

  url "https://github.com/seongilp/hole/releases/download/v#{version}/Hole-#{version}.dmg"
  name "Hole"
  desc "Pi-hole style ad-blocking DNS sinkhole in the menu bar"
  homepage "https://github.com/seongilp/hole"

  depends_on macos: ">= :ventura"

  app "Hole.app"

  uninstall quit: "com.zihado.Hole"

  zap trash: [
    "~/Library/Application Support/Hole",
    "~/Library/Logs/Hole",
    "~/Library/Preferences/com.zihado.Hole.plist",
  ]

  caveats <<~EOS
    Hole runs a DNS server on port 53. To start blocking, point macOS DNS at it:
      networksetup -setdnsservers Wi-Fi 127.0.0.1

    Before quitting or uninstalling Hole, restore DNS or you will lose internet:
      networksetup -setdnsservers Wi-Fi empty

    Dashboard: http://127.0.0.1:4653
  EOS
end
