class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.7.1/nnscaffold-arm64.tar.gz"
      sha256 "35fa712a753b6628a937f89a743891ab57a66e6518d951cf3a7b51af0a2d8046"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.7.1/nnscaffold-x86_64.tar.gz"
      sha256 "836a8b7bcd9b7918d79aca7680989773afc64e0024f392abad312a9716754417"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
