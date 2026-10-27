cask "axolotl-launcher" do
  version "1.10.2"
  sha256 "54cd455ba094595a0b517c8d435d7f44beda975cfdec30dc3d142ac4e33e7aa3"

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
