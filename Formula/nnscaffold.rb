class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.8.0/nnscaffold-arm64.tar.gz"
      sha256 "74a60ca98831794c472566f4d4b052573759c99f6fe064004b557116cbbdf528"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.8.0/nnscaffold-x86_64.tar.gz"
      sha256 "afd2696b882c4cf6da55ae2fb841bbedb1e3a908ad5dfba4813bf59c3e072430"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
