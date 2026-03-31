class Charcol < Formula
  desc "Terminal game engine with AI-powered game builder"
  homepage "https://github.com/tlg-studio/homebrew-charcol"
  version "0.1.1"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-arm64.tar.gz"
    sha256 "0b21bb91d76c86516d569e3e018b1d47caaac98a2e4f89292892f725ba24d856"
  else
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-x86_64.tar.gz"
    sha256 "6dd8359f14f5fb6c10c093f0129c2951e6f70e5d078fa9c5ce84e68d73ccacc6"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"charcol"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/charcol --help")
  end
end
