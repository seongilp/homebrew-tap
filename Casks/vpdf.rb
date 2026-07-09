cask "vpdf" do
  version "1.0.0"
  sha256 "bcd433b4756687ab0d8451c123b153148f11671060da6c56f835ef60967f616a"

  url "https://github.com/seongilp/vpdf/releases/download/v#{version}/vpdf-#{version}.dmg"
  name "vpdf"
  desc "Fast native macOS PDF viewer built with AppKit and PDFKit"
  homepage "https://github.com/seongilp/vpdf"

  depends_on macos: ">= :ventura"

  app "vpdf.app"

  zap trash: [
    "~/Library/Saved Application State/com.zihado.vpdf.savedState",
  ]
end
