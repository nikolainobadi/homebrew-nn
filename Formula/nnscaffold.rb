class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.0/nnscaffold-arm64.tar.gz"
      sha256 "73ffb17a172f5129e6dbca9b56b4e27875dc11bd38bd20426e48d5edac9e505e"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.16.0/nnscaffold-x86_64.tar.gz"
      sha256 "24db3b4c88bc0495f8a129ccdb4d7f1b0c8f71fda4c07a77f2d080695ad9e733"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
