class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.7.0/workshop-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "ff81dc2525b559688bac8261fd9121384701d74eaa1b200bb4dc5060569f8bc7"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.7.0/workshop-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "814bc0deb9da82d04803243a158d77fff202e00e9bfeaaaf4783353726d5adee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.7.0/workshop-v0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "639eeec4661c9f1dff7e9ca1b7ed0506ac0d4f0f29eb6f9c5932c08369c6945d"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.7.0/workshop-v0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c311998c319dfba058bc88777b010c9788abf69058ce5b29dcda359ef8b68bb"
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
