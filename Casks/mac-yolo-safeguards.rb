cask "mac-yolo-safeguards" do
  version "1.2.0"
  sha256 "ce60c07b29cdc41ff257dfbcd4b2c15d021308a56d35ebc077b039698a8f9452"

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
