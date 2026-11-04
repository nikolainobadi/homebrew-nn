class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.10.1/nnscaffold-arm64.tar.gz"
      sha256 "d1468ef6990b1f51a77a2999dc173b2eedb19a9459276bcbdc1150435093dca7"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.10.1/nnscaffold-x86_64.tar.gz"
      sha256 "6340ab6653c8d442c7a166e92d97e7622b1880e98264a0ddc0373aac8b48fa02"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
