class Charcol < Formula
  desc "Terminal game engine with AI-powered game builder"
  homepage "https://github.com/tlg-studio/homebrew-charcol"
  version "0.1.0"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-arm64.tar.gz"
    sha256 "b1497ebfd37b8dbddd3b7e568c159b3c7c8514095afa86a652252dd17f79b567"
  else
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-x86_64.tar.gz"
    sha256 "f42152c0c4d39ce6d5d54c3a1a8174de52f5a0e72b165afe4133a3658af0db61"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"charcol"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/charcol --help")
  end
end
