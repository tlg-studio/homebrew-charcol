class Charcol < Formula
  desc "Terminal game engine with AI-powered game builder"
  homepage "https://github.com/tlg-studio/homebrew-charcol"
  version "0.1.0"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-arm64.tar.gz"
    sha256 "0124f0490935d78f5eb04bc242dca7afbe5c4bee0bd19da810e5fb345cd2a914"
  else
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-x86_64.tar.gz"
    sha256 "dcb96fe7ba5f475c1f462df673797a8d83d85044dfe42c33f79d594538a3a345"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"charcol"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/charcol --help")
  end
end
