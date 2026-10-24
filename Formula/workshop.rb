class Workshop < Formula
  desc "Solve Advent of Code puzzles by voice, from your phone"
  homepage "https://github.com/thomasschafer/workshop"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.1/workshop-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "433ad868c61e4a2675b4d40866d3b39800eecab28508937048a72deedd8434e8"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.1/workshop-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "1563b720913bec3409161ebec6fa92e040c679e9b6c8238cba5e2e15c890079c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.1/workshop-v0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20d9c4f253649a2eeda3f469a5defae98d43eea37daaa2a905b69f3ef916bc70"
    end

    on_arm do
      url "https://github.com/thomasschafer/workshop/releases/download/v0.8.1/workshop-v0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3767bcc2708a84ebcd2a6182e00fc4d40c6a7a3379e9e5e4263b64deb31863f"
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
