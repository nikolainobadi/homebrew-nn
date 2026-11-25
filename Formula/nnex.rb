class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.6.0/nnex-arm64.tar.gz"
      sha256 "ce4f0cfd4e4ea26d2be6efe32b5cee10886083c5246f2e4ed7f1d2a6617abcd5"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.6.0/nnex-x86_64.tar.gz"
      sha256 "635058fecaca7253c6850f34c1a051aa94f0d1b37204d2391d13e3531fb402ac"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
