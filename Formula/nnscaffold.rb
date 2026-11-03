class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.10.0/nnscaffold-arm64.tar.gz"
      sha256 "fa1f291576418e0dfb8c5211f0b57bbb562702c0a09fad045cdc7732e7a22208"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.10.0/nnscaffold-x86_64.tar.gz"
      sha256 "82451f065792206fa406d78d60d88500a08ad011803ba9b07066701f466ea292"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
