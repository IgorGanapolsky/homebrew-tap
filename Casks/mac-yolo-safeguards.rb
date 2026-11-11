cask "mac-yolo-safeguards" do
  version "1.1.2"
  sha256 "40ea9bf4d70f12d628a4c93bfd4502b24ff725799e19de17bf1ea9aa50f9b4ff"

  url "https://github.com/IgorGanapolsky/mac-yolo-safeguards/releases/download/v#{version}/MacYoloSafeguards-#{version}.dmg"
  name "Mac YOLO Safeguards"
  desc "Menu bar app that keeps AI coding agents from freezing your Mac"
  homepage "https://macyolosafeguards.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacYoloSafeguards.app"
end
