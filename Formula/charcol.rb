class Charcol < Formula
  desc "Terminal game engine with AI-powered game builder"
  homepage "https://github.com/tlg-studio/homebrew-charcol"
  version "0.1.0"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-arm64.tar.gz"
    sha256 "b1770827eb0ef3dd1343c540d58e03dedcb5a243db7b9912713472db130e4a7e"
  else
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-x86_64.tar.gz"
    sha256 "85046f2176b5fa8313237f87def6f3c2f0bfef135a5b2b54f687d8bcf9587d99"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"charcol"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/charcol --help")
  end
end
