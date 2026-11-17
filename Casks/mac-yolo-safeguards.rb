cask "mac-yolo-safeguards" do
  version "1.2.8"
  sha256 "246fe1b7cd1744252628145f380f610d6d2814c9e31d4b9c39116123119786cc"

  url "https://github.com/IgorGanapolsky/mac-yolo-safeguards-releases/releases/download/v#{version}/MacYoloSafeguards-#{version}.dmg"
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
