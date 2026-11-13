class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.15.0/nnscaffold-arm64.tar.gz"
      sha256 "d1e0b10d4a5e74ba06573c1697169c2151d6ee19b08006ab59bc5cfa1c1ad40c"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.15.0/nnscaffold-x86_64.tar.gz"
      sha256 "6f8b67812bc836302305c147f995cf069925c9475b6884ca5f52df3f0e5c399a"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
