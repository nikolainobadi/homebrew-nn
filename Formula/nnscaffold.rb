class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.11.1/nnscaffold-arm64.tar.gz"
      sha256 "4d4a75735d5a00dcbe297abe35659f277b25a694880b229ef9e9efec2ff9c717"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.11.1/nnscaffold-x86_64.tar.gz"
      sha256 "f16a96161a1403cddb3cf97283e3e229c449cdad8f3c0e97912aa62c26d079ef"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
