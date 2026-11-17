cask "mac-yolo-safeguards" do
  version "1.2.9"
  sha256 "d2fdf1a53a31ee1afad4e8f438d2599864064d8c7e2005cacad3d4022482abbc"

  url "https://github.com/IgorGanapolsky/mac-yolo-safeguards-releases/releases/download/v#{version}/MacYoloSafeguards-#{version}.dmg"
  name "Mac YOLO Safeguards"
  desc "Menu bar app that shows and cleans up what AI coding agents leave running"
  homepage "https://macyolosafeguards.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacYoloSafeguards.app"
end
