cask "mac-yolo-safeguards" do
  version "1.2.7"
  sha256 "71181b34f0e859710144ce29130b38ff8e1678ab67e9ef4c743835628ee49a0c"

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
