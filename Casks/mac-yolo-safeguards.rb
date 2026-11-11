cask "mac-yolo-safeguards" do
  version "1.1.1"
  sha256 "cdde221a2a4d9448ab83373694240dda80b0300eb3322497b4b4b48aade17ad7"

  url "https://github.com/IgorGanapolsky/mac-yolo-safeguards/releases/download/v#{version}/MacYoloSafeguards-#{version}.dmg"
  name "Mac YOLO Safeguards"
  desc "Menu bar app that keeps AI coding agents from freezing your Mac"
  homepage "https://macyolosafeguards.io/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "MacYoloSafeguards.app"
end
