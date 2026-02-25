class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.1/kiosk-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "623c4ee2d47f3141f3ee9e5af070561c95a4c4daf2b56136fd6e1ae6aab5f86e"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.1/kiosk-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "ae4a867d31dff7e291ec7b4739f5d53c180931a4d99a62bfeed3adb0654711d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.1/kiosk-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "680f78779da82982794ace30fd8be14d0750827ad0c2a37ccebacc1b0e823f0d"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.1/kiosk-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7fb21174b0b4c9d2ab408d47e5f54bea4261057e94b394527d7ea98c96e4ad02"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
