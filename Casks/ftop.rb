cask "ftop" do
  version "0.2.8"
  sha256 "0aa66e88cd6d054b73a4e5314bb7cbcbecbd33f4da1b853c17568168cf6c426b"

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
