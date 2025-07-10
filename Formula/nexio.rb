class Nexio < Formula
  desc "Nexio - CLI tool"
  homepage "https://github.com/nexioxyz/nexio"
  version "7.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://raw.githubusercontent.com/nexioxyz/homebrew-nexio/main/nexio-macos-arm64.tar.gz"
      sha256 "1b0a6269e91d3adddd78c2ffaa3975f79d3230d0f4679ea51bc0f62d032ef697"
    end
    if Hardware::CPU.intel?
      url "https://raw.githubusercontent.com/nexioxyz/homebrew-nexio/main/nexio-macos-x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "nexio"
  end

  test do
    system "#{bin}/nexio", "--version"
  end
end
