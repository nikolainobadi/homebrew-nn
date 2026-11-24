class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.17.0/nnscaffold-arm64.tar.gz"
      sha256 "edabcf71d9470bd6e7318b718a66e53b151ae82e1d3bf638a30e3bc5148cb6ae"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.17.0/nnscaffold-x86_64.tar.gz"
      sha256 "88755aa55fc469dab8a896c0c35260e57042ebf1baf0725e806eb9e2c5f86ecc"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
