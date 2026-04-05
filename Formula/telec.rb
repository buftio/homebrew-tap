class Telec < Formula
  desc "Scriptable Telegram CLI on top of TDLib"
  homepage "https://github.com/buftio/telec"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "tdlib"

  on_macos do
    on_arm do
      url "https://github.com/buftio/telec/releases/download/v0.1.0/telec-v0.1.0-darwin-arm64.tar.gz"
      sha256 "b51b2954b6d540e62037834a676a3afc561be9d4fa13cef25377081e4bf3dc3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buftio/telec/releases/download/v0.1.0/telec-v0.1.0-linux-x64.tar.gz"
      sha256 "302f466da2a4ae175f05735705fc3ebae4d762dc835a1687bdc96a12dd4ae4e2"
    end
  end

  def install
    bin.install "telec"
  end

  test do
    assert_match "Scriptable Telegram CLI on top of TDLib", shell_output("#{bin}/telec --help")
  end
end
