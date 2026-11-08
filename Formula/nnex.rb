class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.1.1/nnex-arm64.tar.gz"
      sha256 "917282a19378f107087870d44fd621b836483f5d45281e4249686481d4a34515"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.1.1/nnex-x86_64.tar.gz"
      sha256 "05e0ea33cab0592849f8f4d4051ad9b76a7efdb934cf371c6e75f646c884afd4"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
