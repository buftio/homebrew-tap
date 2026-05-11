cask "tairi" do
  version "0.12.0"
  sha256 "03212a9ab73c3b81c3a691f81cdf61b9bec072fbc053e8ec9354f6265130b98f"

  url "https://github.com/buftio/tairi/releases/download/v#{version}/tairi-#{version}-macos-arm64.dmg"
  name "Tairi"
  desc "Minimal workspace app inspired by Niri's scrolling philosophy"
  homepage "https://github.com/buftio/tairi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Tairi.app"

  zap trash: [
    "~/Library/Logs/tairi",
    "~/Library/Preferences/org.tairi.app.plist",
  ]
end
