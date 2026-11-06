class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.7.0/kiosk-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "7860dc572eb62b6259a04f3708cac2ff99ac6630846dc84ed1c3ca0cd99c5b5c"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.7.0/kiosk-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f98731d2d444b04edbeae37ed24dedf7ead0e8d2d4f9580e75b34954a269c0da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.7.0/kiosk-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8bfdcbfdff6ce6c9863790b2e7669777f251f0339a16d303f3e2522c6913181"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.7.0/kiosk-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "814f4047466bce65bcf2903d4c642f609ef68f76994555da9d4e64f7eaf7342f"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
