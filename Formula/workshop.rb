class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.4.0/workshop-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c3bf1dc3e702bac395c74fe2ea43aad2cf621af709d89d23b4781a3c6e913bf"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.4.0/workshop-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb3752878f7b595a7c4143156a8586ddeb8425df1247b4f7ae7f275009017df8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.4.0/workshop-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2afcb41e520381d373f647e52913c24da2d207cc02e0e7146375b966a8e23ff1"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.4.0/workshop-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a487387d4b19e5567dd6bb5c26c8c1d1915caf30d12af41af3be0cda953a4be3"
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
