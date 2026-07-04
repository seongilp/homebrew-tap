cask "containerdesk" do
  version "1.0.0"
  sha256 "a4a180c7b44e388af48e819129ff707c7603190beab6c9c1b21556902fe6e6fb"

  url "https://github.com/seongilp/ContainerDesk/releases/download/v#{version}/ContainerDesk-#{version}.dmg"
  name "ContainerDesk"
  desc "Docker Desktop-style GUI for Apple Container"
  homepage "https://github.com/seongilp/ContainerDesk"

  depends_on macos: ">= :sequoia"

  app "ContainerDesk.app"

  caveats <<~EOS
    ContainerDesk is ad-hoc signed. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine /Applications/ContainerDesk.app
    or install with: brew install --cask --no-quarantine containerdesk

    Requires the container CLI: brew install container
  EOS
end
