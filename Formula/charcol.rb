class Charcol < Formula
  desc "Terminal game engine with AI-powered game builder"
  homepage "https://github.com/tlg-studio/homebrew-charcol"
  version "0.1.0"
  license :cannot_represent

  if Hardware::CPU.arm?
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-arm64.tar.gz"
    sha256 "84ee7024d6f0e07d315a60047168e5ef2287d01520186f64a02e2a0c186e42f2"
  else
    url "https://github.com/tlg-studio/homebrew-charcol/releases/download/v#{version}/charcol-macos-x86_64.tar.gz"
    sha256 "be879b5114caba9b34bf57cb9f80174e66c47d36d0b39b247f0433e52b075efa"
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"charcol"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/charcol --help")
  end
end
