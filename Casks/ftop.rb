cask "ftop" do
  version "0.2.11"
  sha256 "f7ab14e415ea03732a568b804a36113163f16c061b128c0ff6fac769c12e38f8"

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
