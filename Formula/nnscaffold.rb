class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.12.1/nnscaffold-arm64.tar.gz"
      sha256 "6bf9c54672d3bb382fdefcb06a0dc9378d8a18fb1c511b84660d2f5d71cd7742"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.12.1/nnscaffold-x86_64.tar.gz"
      sha256 "72045f683f2042c9f8cce9937d82b92321d2af4308ff427db8f7a40f81bb1800"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
