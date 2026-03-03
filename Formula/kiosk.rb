class Kiosk < Formula
  desc "Tmux session manager with worktree support"
  homepage "https://github.com/thomasschafer/kiosk"
  license "MIT"
  version "0.2.3"

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.3/kiosk-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "0b3033dd642fbe5a636796fd420b9d526199ef4645a11ec16290e6962d45332c"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.3/kiosk-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "6e4e64a4e1f8e91c1ec6a91530ff39c6c8ffefa7bda5675fc3d84aa5ea3c1a28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.3/kiosk-v0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba50744cec445b4255ce08be654096cfc1d8b1a7eb653c4066ceef810e631dbd"
    end

    on_arm do
      url "https://github.com/thomasschafer/kiosk/releases/download/v0.2.3/kiosk-v0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05da0a741a58b2067d976edb3de4b3a860410f703f91349e5c5f3e5da347b2ff"
    end
  end

  def install
    bin.install "kiosk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiosk --version")
  end
end
