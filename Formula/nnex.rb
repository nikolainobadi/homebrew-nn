class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.1.0/nnex-arm64.tar.gz"
      sha256 "2c94bcbe8732c8871ac6fc2a2343e89a1deb441ac4d2f36f7aa2f6b0b1741094"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.1.0/nnex-x86_64.tar.gz"
      sha256 "9b3b193efe078146902b047007910b80e49c38a57a1c65520dbefd8abeaa6641"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
