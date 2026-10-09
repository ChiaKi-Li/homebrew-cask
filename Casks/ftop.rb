cask "ftop" do
  version "0.2.4"
  sha256 "e0f5a0a20fc2f6dc3c4fea707c8e561893a13889905fff8a21646d8e4bd72dd1"

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
