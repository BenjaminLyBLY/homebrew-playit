class Playit < Formula
  desc "playit.gg tunnel agent"
  homepage "https://playit.gg"
  version "0.17.1"
  license "BSD-2-Clause"
  depends_on arch: :arm64
  url "https://github.com/BenjaminLyBLY/playit-agent/releases/download/v0.17.1/playit-darwin-arm.tar.gz"
  sha256 "465a883747e628695b209c0f1e11b08cb749526451154834e9fdc564ffa2c6c1"

  def install
    bin.install "playit-darwin-arm" => "playit"
  end

  test do
    system "#{bin}/playit", "--help"
  end
end
