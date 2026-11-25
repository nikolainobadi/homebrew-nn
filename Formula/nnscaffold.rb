class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.18.0/nnscaffold-arm64.tar.gz"
      sha256 "9a68a07514b2d3699dc82fb7ed27ca4f90d6390b6cc571c27931c2345854745a"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.18.0/nnscaffold-x86_64.tar.gz"
      sha256 "939fa1af0a370e4c3c3a25a38b483e796601399668d3f72e0dc19e18ebd3a434"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
