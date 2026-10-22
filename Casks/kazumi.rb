cask "kazumi" do
  version "2.4.1"
  sha256 "e331077f10428a8a50b16c0df485d5c25cec345d873eaaed0ee377ab16aa800b"

  url "https://github.com/Predidit/Kazumi/releases/download/#{version}/Kazumi_macos_#{version}.dmg"

  name "Kazumi"
  desc "Anime streaming application with danmaku support"
  homepage "https://github.com/Predidit/Kazumi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  auto_updates true

  app "Kazumi.app"
end
