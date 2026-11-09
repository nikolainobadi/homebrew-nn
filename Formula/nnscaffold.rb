class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.12.0/nnscaffold-arm64.tar.gz"
      sha256 "0b90d6b61bc4713604816ca9fe23f11ee21aad54da6ad11ee385046a365d17ed"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.12.0/nnscaffold-x86_64.tar.gz"
      sha256 "5d4a4f9ff60b4f464c82277334e0dd84c8a4b1014518833a4c7f575bdae51d56"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
