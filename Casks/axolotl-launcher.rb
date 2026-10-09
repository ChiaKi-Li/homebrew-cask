cask "axolotl-launcher" do
  version "1.9.7"
  sha256 "037dbd7a6462b729930cbc06423dfde6ec253347070f615a93a368ecf35ef4d8"

  url "https://github.com/Mystic-Stars/Axolotl/releases/download/v#{version}/Axolotl.Launcher_#{version}_universal.dmg"

  name "Axolotl Launcher"
  desc "Minecraft launcher"
  homepage "https://github.com/Mystic-Stars/Axolotl"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Axolotl Launcher.app"
end
