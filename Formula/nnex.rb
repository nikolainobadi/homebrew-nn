class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.3.0/nnex-arm64.tar.gz"
      sha256 "43aabab3d00bc2adbb2752739cf42fff3611859f0a1d090f16c596606c144620"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.3.0/nnex-x86_64.tar.gz"
      sha256 "37421b2bc22dd50de1023f1576e1b84be97b06c2a6686f3e75faebab8b49c20e"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
