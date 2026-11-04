class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.4.0/kiosk-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "81d57f47b668b601d01066262d4ff0559f2488bd841384ab5f9c04d5252a5f94"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.4.0/kiosk-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "81d795fe169ca014b294f4e4b2389ce2754dcf2a4ac2264fb32ffdde924e91fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.4.0/kiosk-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41632f185187e8217ce44928db2e0db982ca12f23720b83dd47f204e55ff1133"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.4.0/kiosk-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79f9092a894fc0e6a7f0a11dc9ad9bd74818e59ca0f2c61d569291f2f3ebbc45"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
