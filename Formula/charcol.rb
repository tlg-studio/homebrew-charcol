class Charcol < Formula
  desc "Terminal game engine with AI-powered game builder"
  homepage "https://github.com/tlg-studio/mettle-terminal-engine"
  version "0.1.0"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/tlg-studio/mettle-terminal-engine/releases/download/v#{version}/charcol-macos-arm64.tar.gz"
    sha256 "PLACEHOLDER_ARM64_SHA256"
  else
    url "https://github.com/tlg-studio/mettle-terminal-engine/releases/download/v#{version}/charcol-macos-x86_64.tar.gz"
    sha256 "PLACEHOLDER_X86_64_SHA256"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"charcol"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/charcol --help")
  end
end
