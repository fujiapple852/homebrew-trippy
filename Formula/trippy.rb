class Trippy < Formula
  desc "A network diagnostic tool "
  homepage "https://trippy.cli.rs"
  url "https://github.com/fujiapple852/trippy/archive/refs/tags/0.6.0.tar.gz"
  sha256 "4da57c19f4b6a6f3b4426ea066278ad0b0df2d2addae548b839a17fb20c464ae"
  version "0.6.0"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "trip"
    bin.install "target/release/trip"
  end
    
end
