class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.8.2/nnscaffold-arm64.tar.gz"
      sha256 "7b645ed1c9fc0f8b71d0614d8513e673c1c6e79d140193eae36c33a9778469b1"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.8.2/nnscaffold-x86_64.tar.gz"
      sha256 "ef38386e791404c7d793c935f4d09bb81b8edff91b793bf0400bed29aac647f1"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
