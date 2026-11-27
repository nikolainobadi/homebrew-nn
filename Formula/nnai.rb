class Nnai < Formula
  desc "Tool to manage AI agents"
  homepage "https://github.com/nikolainobadi/nnai-releases"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnai-releases/releases/download/0.0.1/nnai-arm64.tar.gz"
      sha256 "6a6c6fe1f5b6bd576ed832c605894efdb0b84c612a8a26e91e8451765fb6f4e5"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnai-releases/releases/download/0.0.1/nnai-x86_64.tar.gz"
      sha256 "7d96791f4f21cc0fc587a6f632b8f9b171612d2fe1ae5f78dbd9cb48ffaf8759"
    end
  end

  def install
    bin.install "nnai"
  end

  test do
    system "#{bin}/nnai", "--version"
  end
end
