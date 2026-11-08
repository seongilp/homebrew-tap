cask "hole" do
  version "1.1.2"
  sha256 "0f111b496afb4374e260e957a3eca67fb4d2023c1a63d31f28a6930ee7be1919"

  url "https://github.com/seongilp/hole/releases/download/v#{version}/Hole-#{version}.dmg"
  name "Hole"
  desc "Pi-hole style ad-blocking DNS sinkhole in the menu bar"
  homepage "https://github.com/seongilp/hole"

  depends_on macos: :ventura

  app "Hole.app"
  binary "#{appdir}/Hole.app/Contents/MacOS/hole-server", target: "hole"

  uninstall quit: "com.zihado.Hole"

  zap trash: [
    "~/Library/Application Support/Hole",
    "~/Library/Logs/Hole",
    "~/Library/Preferences/com.zihado.Hole.plist",
  ]

  caveats <<~EOS
    Open Hole once from /Applications and approve the "downloaded from the
    Internet" prompt. macOS holds the bundled DNS server until you do.

    Then turn on "이 Mac의 DNS를 Hole로 지정" in the menu bar shield.
    Hole restores your previous DNS when it quits or its server stops.

    Ads still showing? Run:
      hole doctor

    Dashboard: http://127.0.0.1:4653
  EOS
end
