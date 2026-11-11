class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.13.0/nnscaffold-arm64.tar.gz"
      sha256 "d9b73b0a599d85ca5100ff9528361a318783a42a8433ed5a6706ccd6fafb5494"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.13.0/nnscaffold-x86_64.tar.gz"
      sha256 "4dd0b40bf33d3413ae93dbd8a653fea009cc4d2c5cdfcaa95553a5312773f572"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
