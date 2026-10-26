class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.3.0/nnscaffold-arm64.tar.gz"
      sha256 "4169a704200d0dcfd4107742b226653c50541bab414a4151749e2861d52dbfc0"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.3.0/nnscaffold-x86_64.tar.gz"
      sha256 "31f11aa4398d4f769529d918c4adc20dedd49363f874b95767b57e18655c882c"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
