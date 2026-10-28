class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.4.0/nnscaffold-arm64.tar.gz"
      sha256 "ade208310be4dfef481b2a5625b7ef598260dc2a501bd24d354e2fcb584f878f"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.4.0/nnscaffold-x86_64.tar.gz"
      sha256 "c313e0d6ff604359a1b822e6a69c65b12ba22d4b4d2e46eebe34516bdd736418"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
