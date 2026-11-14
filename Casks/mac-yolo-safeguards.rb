cask "mac-yolo-safeguards" do
  version "1.2.3"
  sha256 "b9a6166b3b97165c49a52bb79eda4b39073ecef6b672056254b143bef430a636"

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
