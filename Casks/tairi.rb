cask "tairi" do
  version "0.9.5"
  sha256 "135a8db577a489b2fec4c25866825ebad4b80f296818d45a3fa116373d939ce9"

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
