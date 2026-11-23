class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.1/nnscaffold-arm64.tar.gz"
      sha256 "227e57fc547c876f5baf44a215f5b1b966bc3d7ebb9f91ad9752789344484335"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.1/nnscaffold-x86_64.tar.gz"
      sha256 "355f2f019768fb4bb50424c9c35e4f1c9c9a5fe58ac88f1f3d38b0a285968931"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
