class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.11.0/nnscaffold-arm64.tar.gz"
      sha256 "ae84e0f7144d95426bdc8f2210d08d533656030df3f88fa7df27f7ba217fd20f"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.11.0/nnscaffold-x86_64.tar.gz"
      sha256 "dc232bff62be75545d451a754ede0ee8e0c0a72f7c87b9e16496bf23a8e8b366"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
