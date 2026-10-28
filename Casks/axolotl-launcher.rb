cask "axolotl-launcher" do
  version "1.10.3"
  sha256 "f54706b21dd06bcc4dc72a3655db5bc56335af4f11d1c8fff5ff34d0c7929ab5"

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
