class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.0/workshop-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "3bc052feb6985c5acae2ec50a2333fd61db25ff59e673ecbe6f7ef6e405b1a14"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.0/workshop-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "0da5862ce942c7ac0f133f996e2d146efc3440b1d4f8dc78859697a5ff8c4b17"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.0/workshop-v0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "170485e29a937d194f754aed69dbdc99c87b6b3baad2726a970359bb915b859a"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.0/workshop-v0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72ce94033f346c1c6ba4974bdc2ab1de4a4363da3c3f68a53f36fc832a3cff57"
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
