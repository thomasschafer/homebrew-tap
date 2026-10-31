class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.3.0/kiosk-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "92f40ebccb1e423563a8ca9fed49a8eacd969cdc9da8af85a262184f767ac19e"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.3.0/kiosk-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5f2cc382788f4d263eba2463534c5c3a6f3d2414efb75d891f7881178417dcb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.3.0/kiosk-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa7f27495de56a47018a30a6f50857131d185192ae63d0282941bd4d3713b85d"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.3.0/kiosk-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2cc2c63d19f25c2b557a146a37a61fb71e637a37cd9a265887f7a54da8a97caf"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
