cask "kazumi" do
  version "2.4.7"
  sha256 "b363959c2f41490306f7909d82d5cc14cc7e897ac562c0956ffd594246c89af1"

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
