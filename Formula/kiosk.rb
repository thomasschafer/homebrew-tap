class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.6.0/kiosk-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "048e3871635da2fe7f6a12b19f20e8a329d8f5e196e93e471a132192cba4dcda"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.6.0/kiosk-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "06bbd2c2bdf27320951291feb161945a8370d6d0db4d6e226555fba3467a3a1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.6.0/kiosk-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6dbe0492144141a0480098ddb4a0eb6bf88860b0a2fb15dfea72f57cb2ebf98"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.6.0/kiosk-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c7f2f675865573cfe2f082e4bef9b386346a6f61aab5c3ef3a0ddc3eb2435e02"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
