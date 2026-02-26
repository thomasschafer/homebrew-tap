class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.2/kiosk-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "8cb5552f9ff1ec6bd3c57323d8a5d315a9b8f74b962e6f71d6f27f01e726f6b1"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.2/kiosk-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "e0167240937db98bf4bbcb45bf3d857a92618442486d6522b72fe31aadfb7d98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.2/kiosk-v0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "583a7f9994da2c8c1993d1abe57bf49fa8e911081e8793b0e2cf3006ca59eabf"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.2/kiosk-v0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0a019e90fb20428cf951b1f06766445bc452fcb975872a1becacf4d91c6d544"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
