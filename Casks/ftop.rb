cask "ftop" do
  version "0.2.5"
  sha256 "0fcfae7f28c6cc1791c5d0b108fd8b93adf75c393bdc630c2052445565db7b63"

  url "https://github.com/Nongfsq/ftop/releases/download/v#{version}/Ftop-#{version}-arm64.zip"

  name "ftop"
  desc "Floating system monitor for Apple Silicon Macs"
  homepage "https://github.com/Nongfsq/ftop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  auto_updates true

  app "Ftop.app"
end
