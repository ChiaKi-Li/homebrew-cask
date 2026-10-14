cask "ftop" do
  version "0.2.6"
  sha256 "4f24f58fe4c10b99a5006714572e36769815cf199a6f2e8b5fe42d2e23e871d4"

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
