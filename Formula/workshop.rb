class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "fcfc662d28f93d662861d7b6bd81d843f92e3ed6334b85836d5fb36693387954"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "eafcc6e7e9eb61419356f497989d8f208499d064968a034b6f737342b016e5a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a192c02dcf7aff0efa5dc06d77b96b045d66dd08ef850a52a067763c00247f98"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.5.0/workshop-v0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e427b0a42a25df13525338d32ca1d584048654d5bb753d6403d3e6f192d941ff"
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
