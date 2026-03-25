cask "tairi" do
  version "0.9.9"
  sha256 "07a05aa5c4a1949c8456a6563ede476ade77db9f1478fd8fc820855414387089"

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
