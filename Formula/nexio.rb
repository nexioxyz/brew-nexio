class Nexio < Formula
  desc "Nexio - CLI tool"
  homepage "https://github.com/nexioxyz/nexio"
  version "7.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nexioxyz/homebrew-nexio/releases/download/testnet/nexio-macos-arm64.tar.gz"
      sha256 "f86b39df3c3d77a04757aacf66a82b0215a4d4a1745df47932fe04ecd0df1e8c"
    elsif Hardware::CPU.intel?
      url "https://github.com/nexioxyz/homebrew-nexio/releases/download/testnet/nexio-macos-amd64.tar.gz"
      sha256 "<intel‑sha256‑here>"
    end
  end

  def install
    bin.install "nexio"
  end

  def post_install
    # Remove the quarantine flag so Gatekeeper won’t warn on first launch
    system "xattr", "-dr", "com.apple.quarantine", bin/"nexio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nexio --version")
  end
end

