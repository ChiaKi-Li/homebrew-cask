cask "axolotl-launcher" do
  version "1.9.8"
  sha256 "b0559737ee9717a447841714f076d2fad57acf58f6d3c58fa4a3fe343f293fa7"

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
