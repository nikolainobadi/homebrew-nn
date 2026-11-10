class Nnex < Formula
  desc "Release automation for Swift libraries, CLI tools, macOS apps, and iOS apps"
  homepage "https://github.com/nikolainobadi/nnex-releases"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.2.0/nnex-arm64.tar.gz"
      sha256 "d368988c2bf66b6afc9e300b86c3e2a762a5b3d390c011f7759c1b2f10e358b5"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnex-releases/releases/download/0.2.0/nnex-x86_64.tar.gz"
      sha256 "5818077061f3259a90187a744cb2b1db13ab12093f0a9074c3e1ace222f20ebf"
    end
  end

  def install
    bin.install "nnex"
  end

  test do
    system "#{bin}/nnex", "--version"
  end
end
