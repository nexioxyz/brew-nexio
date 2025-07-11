class Nexio < Formula
  desc "Nexio - CLI tool"
  homepage "https://github.com/nexioxyz/nexio"
  version "7.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nexioxyz/homebrew-nexio/releases/download/testnet/nexio-macos-arm64.tar.gz"
      sha256 "f86b39df3c3d77a04757aacf66a82b0215a4d4a1745df47932fe04ecd0df1e8c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/nexioxyz/homebrew-nexio/releases/download/testnet/nexio-macos-arm64.tar.gz"
      sha256 "f86b39df3c3d77a04757aacf66a82b0215a4d4a1745df47932fe04ecd0df1e8c"
    end
  end

  def install
    bin.install "nexio"
  end

  test do
    system "#{bin}/nexio", "--version"
  end
end
