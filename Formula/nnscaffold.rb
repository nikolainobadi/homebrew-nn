class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.2/nnscaffold-arm64.tar.gz"
      sha256 "ac5c3c21cddf7783589717a9bd0741d091f628ab51fc77968af9ed9643e8c6b3"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.2/nnscaffold-x86_64.tar.gz"
      sha256 "163c4ff2ccc99972cff50491f8f4a66e1a5a2738a26194a350e03881296b2254"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
