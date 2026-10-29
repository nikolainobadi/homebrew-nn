class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.5.0/nnscaffold-arm64.tar.gz"
      sha256 "b4775c616be788d60eb0f5c678f5612aeee5d04dbe57ff411b006df89242f55e"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.5.0/nnscaffold-x86_64.tar.gz"
      sha256 "3a77bafc6ba794cc63c1bbcfd1ed3b9a290e546fa256a8dd631c45bd5b36f2cf"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
