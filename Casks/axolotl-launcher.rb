cask "axolotl-launcher" do
  version "1.9.9"
  sha256 "9bab5b3166e60a826408db1cf2a303a37eb422dbae0bd00408798757f0fc24fa"

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
