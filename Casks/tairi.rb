cask "tairi" do
  version "0.9.12"
  sha256 "4ceafdb64d687081e48971a4842ebafddcc54c924db6cc8a0d8efb58aa66701e"

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
