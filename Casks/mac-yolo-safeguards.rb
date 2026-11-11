cask "mac-yolo-safeguards" do
  version "1.1.0"
  sha256 "ad5cd05d6ca8c97182ff5c1dab2d47060e88781e5cc820d6d5982005a2fff23a"

  url "https://github.com/IgorGanapolsky/mac-yolo-safeguards/releases/download/v#{version}/MacYoloSafeguards-#{version}.dmg"
  name "Mac YOLO Safeguards"
  desc "Menu bar app that keeps AI coding agents from freezing your Mac"
  homepage "https://macyolosafeguards.io/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MacYoloSafeguards.app"
end
