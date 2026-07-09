cask "vpdf" do
  version "1.0.0"
  sha256 "39af651e1e81e8725916c385d8e815f9b3e3c88e5a35e07155ce782f47d1a586"

  url "https://github.com/seongilp/vpdf/releases/download/v#{version}/vpdf-#{version}.dmg"
  name "vpdf"
  desc "Fast native macOS PDF viewer built with AppKit and PDFKit"
  homepage "https://github.com/seongilp/vpdf"

  app "vpdf.app"

  zap trash: [
    "~/Library/Saved Application State/com.zihado.vpdf.savedState",
  ]
end
