class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.5.0/nnex-arm64.tar.gz"
      sha256 "496ea06c7b1dc39f1b51144f21945547228889d6bcd80e752e0a18a2176567fe"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.5.0/nnex-x86_64.tar.gz"
      sha256 "4d36fe436db2da8984f6206bc54bd7f94c79daf6911a8a45f3c0f91720bfdcc8"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
