class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.9.0/nnscaffold-arm64.tar.gz"
      sha256 "4e62b60931b7d61851a3f1bda0f50ef02c357c270e276b44b08446e12b98accc"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.9.0/nnscaffold-x86_64.tar.gz"
      sha256 "2399c121f5ae11ee3882dbf2f657ebce802f676b087582cf8d251072807eb708"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
