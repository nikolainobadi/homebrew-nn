class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.14.0/nnscaffold-arm64.tar.gz"
      sha256 "d5d4663fc704a2fb8e691186ca082a42ed48f9575917ed764f43ca57c20e27a1"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.14.0/nnscaffold-x86_64.tar.gz"
      sha256 "df666a4202fd106b5c599458c54b6a0df05b2ef42f2b12bd04d06dfc05de9faf"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
