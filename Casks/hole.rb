cask "hole" do
  version "1.0.2"
  sha256 "021052682d90bbd06bdbd459b76f510dddb0e966875fe5bc0fd4771b3962a3a6"

  url "https://github.com/seongilp/hole/releases/download/v#{version}/Hole-#{version}.dmg"
  name "Hole"
  desc "Pi-hole style ad-blocking DNS sinkhole in the menu bar"
  homepage "https://github.com/seongilp/hole"

  depends_on macos: :ventura

  app "Hole.app"

  uninstall quit: "com.zihado.Hole"

  zap trash: [
    "~/Library/Application Support/Hole",
    "~/Library/Logs/Hole",
    "~/Library/Preferences/com.zihado.Hole.plist",
  ]

  caveats <<~EOS
    Open Hole once from /Applications and approve the "downloaded from the
    Internet" prompt. macOS holds the bundled DNS server until you do.

    When the shield appears in the menu bar, point macOS DNS at Hole:
      networksetup -setdnsservers Wi-Fi 127.0.0.1

    Before quitting or uninstalling Hole, restore DNS or you will lose internet:
      networksetup -setdnsservers Wi-Fi empty

    Dashboard: http://127.0.0.1:4653
  EOS
end
