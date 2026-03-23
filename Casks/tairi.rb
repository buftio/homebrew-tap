cask "tairi" do
  version "0.9.2"
  sha256 "27692c90f48bc3771e1c62d4f42ae3013085fae2787b450aa23a43d0a86e2086"

  url "https://github.com/buftio/tairi/releases/download/v#{version}/tairi-#{version}-macos-arm64.dmg"
  name "tairi"
  desc "Minimal workspace app inspired by Niri's scrolling philosophy"
  homepage "https://github.com/buftio/tairi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "tairi.app"

  zap trash: [
    "~/Library/Logs/tairi",
    "~/Library/Preferences/org.tairi.app.plist",
  ]
end
