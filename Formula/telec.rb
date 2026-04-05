class Telec < Formula
  desc "Scriptable Telegram CLI on top of TDLib"
  homepage "https://github.com/buftio/telec"
  version "0.1.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "tdlib"

  on_macos do
    on_arm do
      url "https://github.com/buftio/telec/releases/download/v0.1.4/telec-v0.1.4-darwin-arm64.tar.gz"
      sha256 "2055743bba212b12a87b205d9b9087bc3d8f84d7fec21d5dcdd2ffdcdb15035e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buftio/telec/releases/download/v0.1.4/telec-v0.1.4-linux-x64.tar.gz"
      sha256 "755979af5f1ff178cad7fe5b27e990bcd44391554965930734fe8497dba69a9c"
    end
  end

  def install
    bin.install "telec"
  end

  test do
    assert_match "Scriptable Telegram CLI on top of TDLib", shell_output("#{bin}/telec --help")
  end
end
