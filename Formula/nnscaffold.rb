class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.16.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.3/nnscaffold-arm64.tar.gz"
      sha256 "65c113542cac6bd29092ab6dd5c7e645ce006e885f49355add20f097c70e35ee"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.3/nnscaffold-x86_64.tar.gz"
      sha256 "a241f5db5a1cc24a6675aab02acb9520c0408a0598617ff49b1656ae03e1a38f"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
