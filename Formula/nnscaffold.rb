class Nnscaffold < Formula
  desc "Deterministic code generation for swift projects"
  homepage "https://github.com/nikolainobadi/nnscaffold-releases"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.13.1/nnscaffold-arm64.tar.gz"
      sha256 "42c6a1b0de870d28ac60422afe7945bd28d67eaafe7a4df3905f1f29690beb35"
    end

    on_intel do
      url "https://github.com/nikolainobadi/nnscaffold-releases/releases/download/0.13.1/nnscaffold-x86_64.tar.gz"
      sha256 "26bd648dcdd27aee0a207acc05230d6321491523c0f5f7a27e67cecda973bbd6"
    end
  end

  def install
    bin.install "nnscaffold"
  end

  test do
    system "#{bin}/nnscaffold", "--version"
  end
end
