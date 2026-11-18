cask "mac-yolo-safeguards" do
  version "1.2.11"
  sha256 "9e06574a3fc5155e0b1097d0c77ccbccf9d705321de8e9f1f151fe1c1fdf8176"

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

