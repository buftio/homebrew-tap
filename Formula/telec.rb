class Telec < Formula
  desc "Scriptable Telegram CLI on top of TDLib"
  homepage "https://github.com/buftio/telec"
  version "0.1.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "tdlib"

  on_macos do
    on_arm do
      url "https://github.com/buftio/telec/releases/download/v0.1.3/telec-v0.1.3-darwin-arm64.tar.gz"
      sha256 "73cbf445ea5939391e8abfc5c2b2284882cbca29431a87964697756847e2c8d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buftio/telec/releases/download/v0.1.3/telec-v0.1.3-linux-x64.tar.gz"
      sha256 "f2dc3f659885cf6364bb1c26865a019d06cda7cf3a13f71bc5030af5552bfc6d"
    end
  end

  def install
    bin.install "telec"
  end

  test do
    assert_match "Scriptable Telegram CLI on top of TDLib", shell_output("#{bin}/telec --help")
  end
end
