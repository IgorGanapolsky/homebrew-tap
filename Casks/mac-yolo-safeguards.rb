cask "mac-yolo-safeguards" do
  version "1.0.0"
  sha256 "9a680e3557ba6058bc86ff9fd92294f44bee2bfc5a1d0d07eeec5510eb9aad45"

  url "https://github.com/IgorGanapolsky/mac-yolo-safeguards/releases/download/v#{version}/MacYoloSafeguards-#{version}.dmg"
  name "Mac YOLO Safeguards"
  desc "Native macOS Liquid Glass HUD & 11-Tool MCP Guardrail Server for AI Coding Agents"
  homepage "https://igorganapolsky.github.io/mac-yolo-safeguards/"

  depends_on macos: ">= :sonoma"

  app "MacYoloSafeguards.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/MacYoloSafeguards.app"],
                   sudo: false
  end
end
