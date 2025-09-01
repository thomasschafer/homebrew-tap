class Frep < Formula
  desc "Fast find-and-replace CLI"
  homepage "https://github.com/thomasschafer/frep"
  url "https://github.com/thomasschafer/frep/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "45753c1e0d24fa206dff615f27993eaa796f0d9160d44ae7477916a58c6df6b1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "frep")
  end

  test do
    (testpath/"test.txt").write("hello world")
    system bin/"frep", "world", "universe", "-d", testpath
    assert_match "hello universe", (testpath/"test.txt").read
  end
end
