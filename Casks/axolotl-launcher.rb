cask "axolotl-launcher" do
  version "1.10.0"
  sha256 "5f9b95afd8771f28362e163090d1f98822a2590cbea092129b41fecc75b62f61"

  url "https://github.com/Axolotl-Launcher/Axolotl/releases/download/v#{version}/Axolotl.Launcher_#{version}_universal.dmg"

  name "Axolotl Launcher"
  desc "Minecraft launcher"
  homepage "https://github.com/Axolotl-Launcher/Axolotl"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Axolotl Launcher.app"
end
