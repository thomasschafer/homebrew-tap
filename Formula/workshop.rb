class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "105ef3db1d19f41d1eb87900829ac4235bf1707d49a8f96266aba75e6896a5b1"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "255376e1b142e3f864c2e84a32e7c650d68bf7cdde8f9b7ab860fd87029f76f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3981cf3850b34cf84df2519d0749004d38ed320218fe47324313399b914fb82b"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e33b6197c0a9f02efda683757309200a1f242ea39c98cf4ae18562e9834b0e47"
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
