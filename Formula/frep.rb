class Frep < Formula
  desc "Fast find-and-replace CLI"
  homepage "https://github.com/thomasschafer/frep"
  url "https://github.com/thomasschafer/frep/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "f09e8ceb5e3f411b19548ce9b70c7bf9180dfc1ee75ee3c3784479adacc656d4"
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
