cask "vpdf" do
  version "1.0.1"
  sha256 "be74bb5731f16567773d65111fbfa3ed12eb6c649050da59b53e6c39232f5687"

  url "https://github.com/seongilp/vpdf/releases/download/v#{version}/vpdf-#{version}.dmg"
  name "vpdf"
  desc "Fast native macOS PDF viewer built with AppKit and PDFKit"
  homepage "https://github.com/seongilp/vpdf"

  app "vpdf.app"

  zap trash: [
    "~/Library/Saved Application State/com.zihado.vpdf.savedState",
  ]
end
