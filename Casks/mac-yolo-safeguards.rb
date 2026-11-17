cask "mac-yolo-safeguards" do
  version "1.2.10"
  sha256 "a498e5d971524537b39dc3f33da019b2593cda20eb528f59c3a34348761979b6"

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

