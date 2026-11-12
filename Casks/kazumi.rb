cask "kazumi" do
  version "2.4.4"
  sha256 "372ec688a83a7cfb505992532b3924c13410432b3798a289b70d45997110650e"

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
