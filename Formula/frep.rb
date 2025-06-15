class Frep < Formula
  desc "Fast find-and-replace CLI"
  homepage "https://github.com/thomasschafer/frep"
  url "https://github.com/thomasschafer/frep/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "39ba43e44884aa2f8d3394cfca39a28c66c264b741894b3092e7d1350a502f6a"
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
