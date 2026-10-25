class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.1.0/nnscaffold-arm64.tar.gz"
      sha256 "2183dfe21862ab3e93c1506c2c8ae0d07cab79b1f5dc08e2e88585038e3e506d"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.1.0/nnscaffold-x86_64.tar.gz"
      sha256 "da6d35584de03eff22106ad31cfc778d78180d9c265dfa8ec424a4cc1fd10e77"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
