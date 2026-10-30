class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.6.0/nnscaffold-arm64.tar.gz"
      sha256 "52218506398202c875e1c409497c5e6cf97c88873f5aa5d7df2d47c086603687"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.6.0/nnscaffold-x86_64.tar.gz"
      sha256 "bbecaf4050ea0cc48019537cb7660940e2e08cc334b05498f481d25c98e6448d"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
