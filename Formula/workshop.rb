class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.6.0/workshop-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "36f5339440ca1e97dc6bda7c79cb41a3f9b3f28e5b91ff12313d95085a196b36"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.6.0/workshop-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "a0c166e73d761f99dfdb7f8b577204e4050f87d100d952f8518eedf4b31193a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.6.0/workshop-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de7b91a9a00bb40f1502060928490bd684a6c47d320991ce21cbd08a9e0a496e"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.6.0/workshop-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1263b5f5f2a4ce9ac037085b1a201c1d0647982bea8139a450957891cda7c37b"
    end
  end

  def install
    bin.install "workshop"
  end

  def caveats
    <<~EOS
      Start Workshop with `workshop`, or `workshop serve --tailscale` to open it on your phone.
      `workshop doctor` checks everything it needs, with fixes for anything missing.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/workshop --version")
  end
end
