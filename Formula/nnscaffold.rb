class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.7.0/nnscaffold-arm64.tar.gz"
      sha256 "23d63291ca2e223505f6097c1a92e62ded0ab91835540bc1d57fc85ffd6c9e00"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.7.0/nnscaffold-x86_64.tar.gz"
      sha256 "590460956309b4adb79c5ff3e7a65478f76cc467b839b07cda4271d8669119d2"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
