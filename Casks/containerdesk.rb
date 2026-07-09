cask "containerdesk" do
  version "1.0.1"
  sha256 "b737555c12a5e91fbf9b1c9353b76df0b407e7d3ccdfbda5baa9bcc834b8c42b"

  url "https://github.com/seongilp/ContainerDesk/releases/download/v#{version}/ContainerDesk-#{version}.dmg"
  name "ContainerDesk"
  desc "Docker Desktop-style GUI for Apple Container"
  homepage "https://github.com/seongilp/ContainerDesk"

  depends_on macos: ">= :sequoia"

  app "ContainerDesk.app"

  caveats <<~EOS
    Requires the container CLI: brew install container
  EOS
end
