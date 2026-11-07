class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.11.2/nnscaffold-arm64.tar.gz"
      sha256 "4bdf64a91281a86c2f32cc3bc7684d78c1dfd06597383656532c512db34f64b5"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.11.2/nnscaffold-x86_64.tar.gz"
      sha256 "0952ef5e72c26af22bceab26bf656874c333194e955c1891e46ad2ac169e9a3d"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
