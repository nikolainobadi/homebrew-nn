class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.8.1/nnscaffold-arm64.tar.gz"
      sha256 "8bc276876b22853d7fb7443e26eb1458b9c4f0791d814216b9d78670f9bb9098"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.8.1/nnscaffold-x86_64.tar.gz"
      sha256 "f973249496a894799cc40279e1219bfbd0631bb154ffe5fbaa36492671f6e3da"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
