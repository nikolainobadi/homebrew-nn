class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.5.1/nnscaffold-arm64.tar.gz"
      sha256 "b3a43e2d095bb1be7977f246aff244a64bf5e149295a943a92c284ba511985c8"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.5.1/nnscaffold-x86_64.tar.gz"
      sha256 "24edf719260f437d7516f34e52a696e8d7520dcbd4d58b71cd3ec576afa69a6f"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
